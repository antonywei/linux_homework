#!/bin/bash
INIT_DIR=$(pwd)
LOGPATH="$INIT_DIR/logging.log"

a=`ps -aux | grep run.py | grep -v 'grep' | awk '{print $2}'`
if [ "$a" != "" ]
then
	kill -9 $a
fi

python run.py > logging.log
