#!/usr/bin/env bats

load test_helper

@test "without args, show help for root pm-apt command" {
  run pm-apt-help

  assert_success

  assert_line "Usage: pm-apt <command> [<args>]"
}

@test "shows help for a specific command" {
  cat > "${PM_APT_TMP_BIN}/pm-apt-hello" <<SH
#!shebang
# Usage: pm-apt hello <world>
# Summary: Says "hello" to you
# This command is useful for saying hello.
echo hello
SH

  run pm-apt-help hello

  assert_success
  assert_output <<SH
Usage: pm-apt hello <world>

This command is useful for saying hello.
SH
}
