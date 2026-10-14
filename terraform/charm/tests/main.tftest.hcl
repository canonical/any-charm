# Copyright 2026 Canonical Ltd.
# See LICENSE file for licensing details.

run "setup_tests" {
  module {
    source = "./tests/setup"
  }
}

run "basic_deploy" {
  variables {
    model_uuid = run.setup_tests.model_uuid
    base       = "ubuntu@24.04"
    channel    = "latest/edge"
    # renovate: depName="any-charm"
    revision = 140
  }

  assert {
    condition     = output.application.name == "any-charm"
    error_message = "any-charm application name did not match expected"
  }

  assert {
    condition     = output.provides.value.endpoint == "provide-aar"
    error_message = "any-charm module should provide 'provides.value' output"
  }

  assert {
    condition     = output.provides.provide_agent_auth.endpoint == "provide-agent-auth"
    error_message = "any-charm module should provide 'provides.provide_agent_auth' output"
  }

  assert {
    condition     = output.provides.provide_airbyte_server.endpoint == "provide-airbyte-server"
    error_message = "any-charm module should provide 'provides.provide_airbyte_server' output"
  }

  assert {
    condition     = output.requires.value.endpoint == "dns-record"
    error_message = "any-charm module should provide 'requires.value' output"
  }

  assert {
    condition     = output.requires.ingress.endpoint == "ingress"
    error_message = "any-charm module should provide 'requires.ingress' output"
  }

  assert {
    condition     = output.requires.ldap.endpoint == "ldap"
    error_message = "any-charm module should provide 'requires.ldap' output"
  }
}
