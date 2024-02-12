# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

import json
import logging
import pathlib
import re
import textwrap

import pytest

logger = logging.getLogger(__name__)


@pytest.mark.abort_on_fail
async def test_install_python_dependencies(ops_test, any_charm, run_rpc):
    any_charm_script = textwrap.dedent(
        """\
    from any_charm_base import AnyCharmBase

    class AnyCharm(AnyCharmBase):
        def __init__(self, *args, **kwargs):
            super().__init__(*args, **kwargs)

        def pydantic_version(self):
            import pydantic
            return pydantic.VERSION

        def requests_version(self):
            import requests
            return requests.__version__
    """
    )

    name = "test-packages"
    await ops_test.model.deploy(
        any_charm,
        application_name=name,
        config={
            "python-packages": "pydantic",
            "src-overwrite": json.dumps({"any_charm.py": any_charm_script}),
        },
        series="jammy",
    ),
    await ops_test.model.wait_for_idle(status="active")

    pydantic_version = await run_rpc(name, "rpc", method="pydantic_version")
    wheelhouse_txt = (pathlib.Path(__file__).parent.parent.parent / "wheelhouse.txt").read_text()
    expected_pydantic_version = re.findall(
        "^pydantic==(2.+)$", wheelhouse_txt, flags=re.MULTILINE
    )[0]
    assert pydantic_version == expected_pydantic_version
    _, debug_log, _ = await ops_test.juju("debug-log", "--replay")
    assert debug_log.count("installing python packages ['pydantic'] from wheelhouse") == 1

    await ops_test.model.applications[name].set_config({"python-packages": "requests==2.31.0"})
    await ops_test.model.wait_for_idle(status="active")

    requests_version = await run_rpc(name, "rpc", method="requests_version")
    assert requests_version == "2.31.0"
    _, debug_log, _ = await ops_test.juju("debug-log", "--replay")
