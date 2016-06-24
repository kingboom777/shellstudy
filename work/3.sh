#!/bin/bash
#通过df命令判断分区的使用率
useprecent=$(df -h | grep /dev/sda3 | awk '{print $5}' | sed 's/%//g')
if [ "$useprecent" -ge 85 ]
	then
	echo "当前使用量已超过预警线"
else 
	echo "当前使用量正常"
fi


