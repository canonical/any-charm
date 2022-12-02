# Copyright 2022 Canonical Ltd.
# See LICENSE file for licensing details.

"""The base class for AnyCharm to provide the default functionality of any-charm."""

import json
import logging
from typing import Iterator

import yaml
from ops.charm import ActionEvent, CharmBase
from ops.model import ActiveStatus, Relation

logger = logging.getLogger(__name__)

__all__ = ["AnyCharmBase"]


class AnyCharmBase(CharmBase):
    """Charm the service."""

    def __init__(self, *args):
        super().__init__(*args)
        with open("metadata.yaml", encoding="utf-8") as metadata_fo:
            metadata = yaml.safe_load(metadata_fo)
        self.__relations = list(metadata["provides"]) + list(metadata["requires"])
        self.framework.observe(self.on.get_relation_data_action, self._get_relation_data_)
        self.framework.observe(self.on.rpc_action, self._rpc_)
        self.framework.observe(self.on.start, self._on_start_)

    def _on_start_(self, event):
        self.unit.status = ActiveStatus()

    def __relation_iter(self) -> Iterator[Relation]:
        for relation_name in self.__relations:
            for relation in self.model.relations[relation_name]:
                yield relation

    @staticmethod
    def __extrack_relation_unit_data(relation: Relation):
        data = {}
        for unit in relation.units:
            data[unit.name] = dict(relation.data[unit])
        return data

    def _get_relation_data_(self, event):
        try:
            relation_data_list = []
            for relation in self.__relation_iter():
                relation_data_list.append(
                    {
                        "relation": relation.name,
                        "other_application_name": relation.app.name,
                        "application_data": dict(relation.data[relation.app]),
                        "unit_data": self.__extrack_relation_unit_data(relation),
                    }
                )
            event.set_results({"relation-data": json.dumps(relation_data_list)})
        except Exception as exc:
            logger.exception("error while handling get-relation-data action")
            event.fail(repr(exc))

    def _rpc_(self, event: ActionEvent):
        try:
            action_params = event.params
            method = action_params["method"]
            args = json.loads(action_params["args"])
            kwargs = json.loads(action_params["kwargs"])
            result = getattr(self, method)(*args, **kwargs)
            event.set_results({"return": json.dumps(result)})
        except Exception as exc:
            logger.exception("error while handling rpc action")
            event.fail(repr(exc))
