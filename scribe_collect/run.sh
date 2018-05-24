#!/bin/bash
EXEC_FNAME=collect_shopee_shop_collective_logs
EXEC_DIR=$(dirname $(readlink -f $0))

while true
do
	serverip=`ip a | grep "inet " | sed "s/^\s*//" | cut -d " " -f 2 | grep -vE "^(10\.|127\.|192\.168\.|172\.([1][6-9]|[2][0-9]|30|31)\.)" | head -n 1 | sed "s/\/.*$//"`
	if [ -z "$serverip" ]; then
	        serverip=`ip a | grep "inet " | sed "s/^\s*//" | cut -d " " -f 2 | grep -E "^(10\.|192\.168\.|172\.([1][6-9]|[2][0-9]|30|31)\.)" | head -n 1 | sed "s/\/.*$//"`
	fi
        $EXEC_DIR/$EXEC_FNAME -l $serverip 2>> $EXEC_DIR/error.log
        sleep 1
done
