#!/usr/bin/env bash

source ./scripts/set_vars.sh

##
# Main function
##
function main() {
  local zipfilename

  zipfilename=cli.zip

  set_vars

  if [ ! -d "${BIN_PATH}" ]; then
    printf "%b No \".bin\" directory exists. Have you run \"./scripts.build.sh\"? \n" "${ERROR_PREFIX}"
    exit 1
  fi

  # Remove previous zip.
  if [ -d "${DIST_PATH}" ]; then
    printf "%b Removing dist directory... \n" "${INFO_PREFIX}"
    rm  -rf "${DIST_PATH}"
  fi

  # Create a new dist directory.
  mkdir "${DIST_PATH}"

  # Zip up the binary.
  printf "%b Compressing... \n" "${INFO_PREFIX}"
  zip -r -j "${DIST_PATH}/${zipfilename}" "${BIN_PATH}"/*

  printf "%b Done!\n" "${INFO_PREFIX}"
}

# And so, it begins...
main
