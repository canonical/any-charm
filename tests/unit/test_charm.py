# Copyright 2022 Canonical Ltd.
# See LICENSE file for licensing details.

import unittest

from ops.testing import Harness

from any_charm import AnyCharm


class TestCharm(unittest.TestCase):
    def setUp(self):
        self.harness = Harness(AnyCharm)
        self.addCleanup(self.harness.cleanup)
        self.harness.begin()

    def test(self):
        pass
