#!/usr/bin/env bash

set -ex

MACHINE_FAMILY=$1
DRIVER_VERSION=$2

mkdir -p chromedriver

./bin/bdi -vvv driver:chromedriver --driver-version=$DRIVER_VERSION --os=$MACHINE_FAMILY ./chromedriver

./chromedriver/chromedriver --port=4444 --verbose --enable-chrome-logs --whitelisted-ips=
