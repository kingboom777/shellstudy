#!/bin/bash
#通过查找env文件 来判断当前用户是否为root
loguser=$(env | grep USER | cut -f 2 -d "=")
if [ "$loguser" == root ];then
	echo "当前用户为root"
else 
	echo "当前用户为"$loguser
fi
