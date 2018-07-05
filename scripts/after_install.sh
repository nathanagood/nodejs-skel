#!/usr/bin/env bash

basename=$(basename $0)

echo "Running ${basename}..."

cd /var/www
npm install > /var/log/npm_install.log 2> /var/log/npm_error.log

exit $?