# Copyright 2022 Canonical Ltd.
# See LICENSE file for licensing details.

import json
import logging
import textwrap

import kubernetes
import pytest
import requests

logger = logging.getLogger(__name__)


@pytest.mark.abort_on_fail
async def test_build_and_deploy(ops_test):
    """Build the charm-under-test and deploy it."""
    # build and deploy charm from local source folder
    charm = await ops_test.build_charm(".")
    await ops_test.model.deploy(charm, application_name="any", series="focal")
    await ops_test.model.wait_for_idle(status="active")


async def test_redis(ops_test, run_action):
    await ops_test.model.deploy("redis-k8s")
    await ops_test.model.add_relation("any", "redis-k8s")
    await ops_test.model.wait_for_idle(status="active")

    status = await ops_test.model.get_status()
    redis_address = status["applications"]["redis-k8s"]["units"]["redis-k8s/0"]["address"]
    relation_data_provided_by_redis = (await run_action("any", "get-relation-data"))[
        "relation-data"
    ]
    assert json.loads(relation_data_provided_by_redis) == [
        {
            "relation": "redis",
            "other_application_name": "redis-k8s",
            "application_data": {},
            "unit_data": {"redis-k8s/0": {"hostname": redis_address, "port": "6379"}},
        }
    ]


async def test_ingress(ops_test, run_action):
    ingress_lib_url = "https://github.com/canonical/nginx-ingress-integrator-operator/raw/main/lib/charms/nginx_ingress_integrator/v0/ingress.py"
    ingress_lib = requests.get(ingress_lib_url, timeout=10).text
    any_charm_src_overwrite = {
        "ingress.py": ingress_lib,
        "any_charm.py": textwrap.dedent(
            """\
        from ingress import IngressRequires
        from any_charm_base import AnyCharmBase
        class AnyCharm(AnyCharmBase):
            def __init__(self, *args, **kwargs):
                super().__init__(*args, **kwargs)
                self.ingress = IngressRequires(
                    self,
                    {
                        "service-hostname": "any",
                        "service-name": self.app.name,
                        "service-port": 80
                    }
                )
            def update_ingress(self, ingress_config):
                self.ingress.update_config(ingress_config)
        """
        ),
    }
    await ops_test.model.applications["any"].set_config(
        {"src-overwrite": json.dumps(any_charm_src_overwrite)}
    )
    await ops_test.model.deploy("nginx-ingress-integrator", application_name="ingress", trust=True)
    await ops_test.model.add_relation("any", "ingress:ingress")
    await ops_test.model.wait_for_idle(status="active")

    kubernetes.config.load_kube_config()
    kube = kubernetes.client.NetworkingV1Api()
    ingress_annotations = kube.read_namespaced_ingress(
        "any-ingress", namespace=ops_test.model.name
    ).metadata.annotations
    assert "nginx.ingress.kubernetes.io/enable-modsecurity" not in ingress_annotations
    assert "nginx.ingress.kubernetes.io/enable-owasp-modsecurity-crs" not in ingress_annotations
    assert "nginx.ingress.kubernetes.io/modsecurity-snippet" not in ingress_annotations

    await run_action(
        "any",
        "rpc",
        method="update_ingress",
        kwargs=json.dumps({"ingress_config": {"owasp-modsecurity-crs": True}}),
    )
    await ops_test.model.wait_for_idle(status="active")

    ingress_annotations = kube.read_namespaced_ingress(
        "any-ingress", namespace=ops_test.model.name
    ).metadata.annotations
    assert ingress_annotations["nginx.ingress.kubernetes.io/enable-modsecurity"] == "true"
    assert (
        ingress_annotations["nginx.ingress.kubernetes.io/enable-owasp-modsecurity-crs"] == "true"
    )
    assert ingress_annotations["nginx.ingress.kubernetes.io/modsecurity-snippet"]
