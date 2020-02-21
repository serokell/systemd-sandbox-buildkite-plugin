#!/usr/bin/env bats

load 'test_helper/bats-support/load'
load 'test_helper/bats-assert/load'

@test "calls git log" {
  export BUILDKITE_COMMAND="echo hello world"
  export BUILDKITE_AGENT_NAME="test"

  run "$PWD/hooks/command"

  assert_output --partial "hello world"
  assert_success
}
