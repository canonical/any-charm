# Copyright 2022 Canonical Ltd.
# See LICENSE file for licensing details.

import pytest
import pytest_asyncio
from pytest_operator.plugin import OpsTest


@pytest.fixture
def run_action(ops_test: OpsTest):
    async def _run_action(application_name, action_name, **params):
        app = ops_test.model.applications[application_name]
        action = await app.units[0].run_action(action_name, **params)
        await action.wait()
        return action.results

    return _run_action


@pytest_asyncio.fixture(scope="module")
async def any_charm(ops_test: OpsTest):
    return await ops_test.build_charm(".")
