# Copyright 2022 Canonical Ltd.
# See LICENSE file for licensing details.
import asyncio
import json
import logging
import textwrap

import kubernetes
import requests

logger = logging.getLogger(__name__)


async def test_redis(ops_test, any_charm, run_action):
    any_app_name = "any-redis"
    await asyncio.gather(
        ops_test.model.deploy("redis-k8s"),
        ops_test.model.deploy(any_charm, application_name=any_app_name, series="jammy"),
    )
    await ops_test.model.add_relation(any_app_name, "redis-k8s")
    await ops_test.model.wait_for_idle(status="active")

    status = await ops_test.model.get_status()
    redis_address = status["applications"]["redis-k8s"]["units"]["redis-k8s/0"]["address"]
    relation_data_provided_by_redis = (await run_action(any_app_name, "get-relation-data"))[
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


async def test_ingress(ops_test, any_charm, run_action):
    any_app_name = "any-ingress"
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
    await asyncio.gather(
        ops_test.model.deploy("nginx-ingress-integrator", application_name="ingress", trust=True),
        ops_test.model.deploy(
            any_charm,
            application_name=any_app_name,
            series="jammy",
            config={"src-overwrite": json.dumps(any_charm_src_overwrite)},
        ),
    )
    await ops_test.model.add_relation(any_app_name, "ingress:ingress")
    await ops_test.model.wait_for_idle(status="active")

    await run_action(
        any_app_name,
        "rpc",
        method="update_ingress",
        kwargs=json.dumps({"ingress_config": {"owasp-modsecurity-crs": True}}),
    )
    await ops_test.model.wait_for_idle(status="active")

    kubernetes.config.load_kube_config()
    kube = kubernetes.client.NetworkingV1Api()

    def get_ingress_annotation():
        return kube.read_namespaced_ingress(
            "any-ingress", namespace=ops_test.model.name
        ).metadata.annotations

    await ops_test.model.block_until(
        lambda: "nginx.ingress.kubernetes.io/enable-modsecurity" in get_ingress_annotation(),
        timeout=180,
        wait_period=5,
    )
    ingress_annotations = get_ingress_annotation()
    assert ingress_annotations["nginx.ingress.kubernetes.io/enable-modsecurity"] == "true"
