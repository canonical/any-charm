# Copyright 2026 Canonical Ltd.
# See LICENSE file for licensing details.

variables {
  app_name    = "any-charm"
  base        = "ubuntu@22.04"
  channel     = "latest/edge"
  config      = {}
  constraints = "arch=amd64"
  model_uuid  = "00000000-0000-0000-0000-000000000001"
  revision    = 10
  units       = 2
}

mock_provider "juju" {
  mock_resource "juju_application" {
    override_during = plan
    defaults = {
      id         = "any-charm"
      model_type = "lxd"
    }
  }
}

run "deploys_application" {
  command = plan

  assert {
    condition     = output.application.name == "any-charm" && output.application.model_uuid == "00000000-0000-0000-0000-000000000001" && output.application.charm[0].name == "any-charm" && output.application.charm[0].channel == "latest/edge" && output.application.charm[0].base == "ubuntu@22.04" && output.application.charm[0].revision == 10
    error_message = "application identity did not match the expected deployment"
  }

  assert {
    condition     = output.application.constraints == "arch=amd64"
    error_message = "application constraints did not match expected"
  }

  assert {
    condition     = output.application.units == 2
    error_message = "application units did not match expected"
  }

  assert {
    condition     = length(output.provides) == 263
    error_message = "provides map did not contain every provided endpoint"
  }

  assert {
    condition     = length(output.requires) == 274
    error_message = "requires map did not contain every required endpoint"
  }

  assert {
    condition     = output.provides["provide_aar"].endpoint == "provide-aar" && output.provides["provide_aar"].name == "any-charm" && output.provides["provide_aar"].kind == "endpoint"
    error_message = "provide-aar endpoint did not match expected structure"
  }

  assert {
    condition     = output.requires["redis"].endpoint == "redis" && output.requires["redis"].name == "any-charm" && output.requires["redis"].kind == "endpoint"
    error_message = "redis endpoint did not match expected structure"
  }
}
