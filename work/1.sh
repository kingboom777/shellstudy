#!/bin/bash
#通过whoami命令判断当前用户并输出
loguser=$(whoami)
if [ "$loguser" == root ]
	then
	echo "当前为root用户"
else
	echo "当前用户是"$loguser
fi
