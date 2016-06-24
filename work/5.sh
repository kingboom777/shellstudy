#!/bin/bash
#判断nginx服务是否运行
sernginx=$(ps -A | grep nginx | grep -v grep)
if [  -n "$sernginx" ]
	then
	echo "nginx服务已启动"
else
	echo "重新启动nginx"
	cd /usr/local/nginx/sbin
	./nginx
fi
