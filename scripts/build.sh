#!/usr/bin/env bash

###
# Builds the cli.
###

source ./scripts/set_vars.sh

##
# Main function
##
function main() {
  local version

  set_vars

  version=$(<VERSION)

  # If the version argument exists, use it.
  if [ -n "$1" ]; then
    version="$1"
  fi

  printf "%b Compiling binary...\n" "${INFO_PREFIX}"
  go build -o .bin/cli -ldflags "-X main.Version=$version" cmd/cli/main.go


  printf "%b Done!\n" "${INFO_PREFIX}"
}

# And so, it begins...
main "$1"
