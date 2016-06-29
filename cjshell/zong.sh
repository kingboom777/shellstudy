#!/bin/bash
resettem=$(tput sgr0)
declare -A ssharray
i=0
numbers=""

for script_file in $(ls -I zong.sh ./ )
	do
		echo -e '\e[1;35m' "脚本:" ${i} '==>' ${resettem} ${script_file} 
		ssharray[$i]=${script_file}
		numbers="${numbers} | ${i}"
		i=$((i+1))
	done
while true
do
	read -p "请输入一个数字：  " execshell
	if [[ ! $execshell =~ ^[0-9]+ ]];then
		exit 0
	fi
	./${ssharray[$execshell]}
	
done
