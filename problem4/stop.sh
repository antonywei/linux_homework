#!/bin/bash

a=`ps -aux | grep run.py | grep -v 'grep' | awk '{print $2}'`
if [ "$a" == "" ]
then
	echo "already stopped"
else
	kill -9 $a > /dev/null
	if [ $? == "0" ]
	then
		echo "stop successed"
	else
		echo "stop failed"
	fi
fi

