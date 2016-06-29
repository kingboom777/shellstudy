#!/bin/bash
echo
echo
echo " ################################################################"
echo " #                                                              #"
echo " #                         应用服务监控                         #"
echo " #                                                              #"
echo " ################################################################"
echo
echo
sever_host="http://192.168.83.134/nginx_status"
re_code=$( curl -m 5 -s -w %{http_code} $sever_host -o /dev/null )

if [ $re_code -eq 000 -o $re_code -ge 500 ]
	then
	echo "当前nginx服务未启用或出现错误 服务返回值：" $re_code
else
	echo "当前nginx服务已启用 服务返回值："$re_code
fi

