#!/usr/bin/env bash

basename=$(basename $0)

echo "Running ${basename}..."

running_proccess=`ps aux | grep "node index.js" | grep -v "grep" | wc -l`

if [ ${running_proccess} -eq 1 ]; then
    exit 0
fi

echo "Could not find node process..." 1>&2

exit 1