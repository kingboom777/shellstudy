#!/bin/bash
echo
echo
echo " ################################################################"
echo " #                                                              #"
echo " #                             系统信息                         #"
echo " #                                                              #"
echo " ################################################################"
echo
echo
echo "系统版本: " $( cat  /etc/redhat-release )
echo "内核版本: " $( uname -r)
echo "主机名：" $( hostname )
echo "内网IP: " $(hostname -i )
echo "网关：" $( netstat -r | grep default | awk '{print $2 }')
echo "外网IP：" $(curl -s http://ipecho.net/plain)
echo "DNS地址："$( cat /etc/resolv.conf  | grep nameserver | awk '{ print $2}')
echo
echo "系统使用内存："  $( free -m | grep Mem | awk '{print ($2-$4)"M" }')
echo "应用使用内存："  $( free -m | grep Mem | awk '{print ($2-$4-$6)"M" }')
echo "当前CPU负载： "  $( top -n 1 -b | grep "load average" | sed 's/^.*average://g'
)

