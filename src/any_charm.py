# Copyright 2022 Canonical Ltd.
# See LICENSE file for licensing details.

"""This module provides the hook for extending AnyCharm."""

from any_charm_base import AnyCharmBase


class AnyCharm(AnyCharmBase):
    """Passthrough AnyCharmBase by default."""
