# Copyright 2022 Canonical Ltd.
# See LICENSE file for licensing details.

"""The base class for AnyCharm to provide the default functionality of any-charm."""

import json
import logging
from typing import Iterator

import yaml
from ops.charm import ActionEvent, CharmBase
from ops.model import ActiveStatus, MaintenanceStatus, Relation

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
        self.framework.observe(self.on.config_changed, self._on_relation_changed_)
        for relation in self.__relations:
            self.framework.observe(self.on[relation].relation_changed, self._on_relation_changed_)

    def __relation_iter(self) -> Iterator[Relation]:
        for relation_name in self.__relations:
            for relation in self.model.relations[relation_name]:
                yield relation

    def _on_relation_changed_(self, _event):
        self.unit.status = MaintenanceStatus()
        set_relation_data_config = yaml.safe_load(self.model.config["set-relation-data"])
        for relation in self.__relation_iter():
            for set_relation in set_relation_data_config:
                if relation.name != set_relation["relation"]:
                    continue
                if relation.app.name != set_relation["other_application_name"]:
                    continue
                app_data = set_relation.get("application_data", {})
                for app_data_key, app_data_value in app_data.items():
                    relation.data[self.app][app_data_key] = app_data_value
                for unit_name, unit_data in set_relation.get("unit_data", {}).items():
                    if self.unit.name != unit_name:
                        continue
                    for unit_data_key, unit_data_value in unit_data.items():
                        relation.data[self.unit][unit_data_key] = unit_data_value
        self.unit.status = ActiveStatus()

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
