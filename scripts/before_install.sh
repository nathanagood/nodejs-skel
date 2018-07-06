#!/usr/bin/env bash

basename=$(basename $0)

echo "Running ${basename}..."

# TODO: Can back these files up first if you perfer to do that.

# Shut down node
node_pid=`ps aux | grep "node index.js" | grep -v "grep" | awk -e '{print $1}'`

kill $node_pid

# The process by this point should have been killed, but we want to just
# make sure.
running_proccess=`ps aux | grep "node index.js" | grep -v "grep" | wc -l`

if [ ${running_proccess} -ne 0 ]; then
    echo "Was unable to stop node process..." 2> /var/log/before_install.log
    exit 1
fi

# CodeDeploy will error if there is already a file in place. Therefore,
# before installing the files, the target should be cleaned up to
# create a clean space in which to place all of the new files.
rm -rf /var/www/*

exit 0