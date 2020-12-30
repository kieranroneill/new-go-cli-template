# Usage:
# make        	# Pulls the repos, installs the dependencies and creates the env files.
# make build    # Checks each service in the services.json file for an env file and creates a local version.
# make install	# Installs dependencies for all the repos specified in services.json.

.PHONY: all build install package

SCRIPT_DIR = ./scripts

all: install build

build:
	${SCRIPT_DIR}/build.sh $(version)

install:
	go get

package:
	${SCRIPT_DIR}/package.sh
