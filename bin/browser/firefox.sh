#!/usr/bin/env bash

set -ex

MACHINE_FAMILY=$1
DRIVER_VERSION=$2

mkdir -p geckodriver

./bin/bdi -vvv driver:geckodriver --driver-version=$DRIVER_VERSION --os=$MACHINE_FAMILY ./geckodriver

./geckodriver/geckodriver --host 127.0.0.1 -vv --port 4444
