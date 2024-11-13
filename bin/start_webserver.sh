#!/usr/bin/env bash

set -ex

WEBSERVER_PID=0

function stop() {
    echo "Stopping PHP server"
  kill -9 $WEBSERVER_PID
}

trap stop INT
trap stop ERR
trap stop EXIT

echo "Starting PHP server on port 8002"
# see https://github.com/minkphp/driver-testsuite/pull/28
export USE_ZEND_ALLOC=0
php -S localhost:8002 -t ./vendor/mink/driver-testsuite/web-fixtures &
WEBSERVER_PID=$!
echo "Started PHP server on port 8002, pid $WEBSERVER_PID"

echo "Waiting for PHP server to be ready..."
ATTEMPT=0
until $(echo | nc localhost 8002); do
        if [ $ATTEMPT -gt 5 ]; then
        echo "Failed to php server driver"
        cat ./logs/mink-test-server.log
        exit 1;
    fi;
    sleep 1;
    echo waiting for PHP server on port 8002...;
    ATTEMPT=$((ATTEMPT + 1))
done;

echo "PHP server started"
while true; do
    echo "PHP server is running"
  sleep 1
done
