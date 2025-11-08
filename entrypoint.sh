#!/bin/bash
#
#

(cd /data && npm install)

touch /data/.restart-cycle

trap stop SIGINT SIGTERM

function stop() {
	kill $CHILD_PID
	wait $CHILD_PID
}

while [ -f /data/.restart-cycle ] ; do
    /usr/local/bin/node $NODE_OPTIONS node_modules/node-red/red.js --userDir /data $FLOWS "${@}" &

    CHILD_PID="$!"

    wait "${CHILD_PID}"
done
