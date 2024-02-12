# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

"""This module provides the hook for extending AnyCharm."""

from any_charm_base import AnyCharmBase


class AnyCharm(AnyCharmBase):
    """Passthrough AnyCharmBase by default."""

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
