# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

import json
import platform
import subprocess

import pytest
import pytest_asyncio
from pytest_operator.plugin import OpsTest


@pytest_asyncio.fixture
def run_action(ops_test: OpsTest):
    async def _run_action(application_name, action_name, **params):
        app = ops_test.model.applications[application_name]
        action = await app.units[0].run_action(action_name, **params)
        await action.wait()
        return action.results

    return _run_action


@pytest_asyncio.fixture
def run_rpc(run_action):
    async def _run_rpc(application_name, action_name, **params):
        result = await run_action(application_name, action_name, **params)
        return json.loads(result["return"])

    return _run_rpc


@pytest.fixture(name="codename")
def codename_fixture():
    """Series codename for deploying any-charm."""
    return subprocess.check_output(["lsb_release", "-cs"]).strip().decode("utf-8")


@pytest.fixture(name="series")
def series_fixture():
    """Series version for deploying any-charm."""
    return subprocess.check_output(["lsb_release", "-rs"]).strip().decode("utf-8")


@pytest_asyncio.fixture(scope="module")
async def any_charm(ops_test: OpsTest, series: str):
    any_charm_path = await ops_test.build_charm(".")
    any_charm_build_dir = any_charm_path.parent
    any_charm_matching_series = list(any_charm_build_dir.rglob(f"*{series}*.charm"))
    assert any_charm_matching_series is not None, f"No build found for series {series}"
    return any_charm_matching_series


@pytest.fixture(scope="module", name="arch")
def arch_fixture():
    """Get the current machine architecture."""
    arch = platform.uname().processor
    if arch in ("aarch64", "arm64"):
        return "arm64"
    if arch in ("ppc64le", "ppc64el"):
        return "ppc64el"
    if arch in ("x86_64", "amd64"):
        return "amd64"
    if arch in ("s390x",):
        return "s390x"
    raise NotImplementedError(f"Unimplemented arch {arch}")
