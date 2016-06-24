#!/bin/bash
#判断所有分区使用情况 并报警
df -h | awk '{print $1 "\t" $5 }' | sed 's/%//g' | sed '1d' | cut -f 2

