#!/usr/bin/env bash

basename=$(basename $0)

echo "Running ${basename}..."

echo "Starting the application..."

cd /var/www
nohup node index.js > /dev/null 2> /dev/null < /dev/null &

exit 0