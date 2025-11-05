# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

import asyncio
import json
import logging
import subprocess
import textwrap

import pytest

logger = logging.getLogger(__name__)


@pytest.fixture(name="series")
async def series_fixture():
    """Series for deploying any-charm."""
    series = subprocess.check_output(["lsb_release", "-cs"]).strip().decode("utf-8")
    return series


@pytest.mark.abort_on_fail
async def test_deploy(ops_test, any_charm, arch, series):
    """Build the charm-under-test and deploy it."""
    await asyncio.gather(
        ops_test.model.deploy(
            any_charm, application_name="this", series=series, constraints={"arch": arch}
        ),
        ops_test.model.deploy(
            any_charm, application_name="other", series=series, constraints={"arch": arch}
        ),
    )
    await ops_test.model.wait_for_idle(status="active")


async def test_relation_and_config(ops_test, run_action):
    overwrite_app_charm_script = textwrap.dedent(
        """\
    from any_charm_base import AnyCharmBase

    class AnyCharm(AnyCharmBase):
        def __init__(self, *args, **kwargs):
            super().__init__(*args, **kwargs)
            self.framework.observe(self.on['require-any'].relation_changed, self._relation_changed)
            self.framework.observe(self.on['provide-any'].relation_changed, self._relation_changed)

        def _relation_changed(self, event):
            if self.unit.is_leader():
                event.relation.data[self.model.app]['value'] = self.app.name
            event.relation.data[self.unit]['value'] = self.unit.name
    """
    )
    for app_name in ("this", "other"):
        await ops_test.model.applications[app_name].set_config(
            {
                "src-overwrite": json.dumps(
                    {
                        "any_charm.py": overwrite_app_charm_script,
                    }
                )
            }
        )
    await ops_test.model.wait_for_idle(status="active")
    await ops_test.model.add_relation("this", "other:provide-any")
    await ops_test.model.wait_for_idle(status="active")
    results = await run_action("other", "get-relation-data")

    assert "relation-data" in results
    relation_data = json.loads(results["relation-data"])
    assert relation_data[0]["relation"] == "provide-any"
    assert relation_data[0]["application_data"] == {
        "other": {"value": "other"},
        "this": {"value": "this"},
    }
    assert relation_data[0]["unit_data"]["this/0"]["value"] == "this/0"
    assert relation_data[0]["unit_data"]["other/0"]["value"] == "other/0"


async def test_overwrite_and_rpc_action(ops_test, run_action):
    overwrite_app_charm_script = textwrap.dedent(
        """\
    from any_charm_base import AnyCharmBase
    from import_test import identity
    class AnyCharm(AnyCharmBase):
        def echo(self, *args, **kwargs):
            return identity({"args": args, "kwargs": kwargs})
    """
    )
    overwrite_import_test_script = "identity = lambda x: x"
    await ops_test.model.applications["this"].set_config(
        {
            "src-overwrite": json.dumps(
                {
                    "any_charm.py": overwrite_app_charm_script,
                    "import_test.py": overwrite_import_test_script,
                }
            )
        }
    )
    await ops_test.model.wait_for_idle(status="active")
    rpc_params = {"args": [1, 2, "3"], "kwargs": {"a": "b"}}
    results = await run_action(
        "this",
        "rpc",
        method="echo",
        args=json.dumps(rpc_params["args"]),
        kwargs=json.dumps(rpc_params["kwargs"]),
    )
    assert json.loads(results["return"]) == rpc_params


async def test_recovery(ops_test, run_action):
    overwrite_app_charm_script = textwrap.dedent(
        """\
    import ops
    class AnyCharm(ops.CharmBase):
        pass
    """
    )
    await ops_test.model.applications["this"].set_config(
        {
            "src-overwrite": json.dumps(
                {
                    "any_charm.py": overwrite_app_charm_script,
                    "any_charm_base.py": "",
                }
            )
        }
    )
    await ops_test.model.wait_for_idle(status="active")
    await ops_test.model.applications["this"].set_config({"src-overwrite": json.dumps({})})
    await ops_test.model.wait_for_idle(status="active")
    results = await run_action("this", "get-relation-data")
    assert "relation-data" in results
