#!/bin/bash
if [ $# -lt 1 ];then
    echo "Usage:$0 number"
    exit 1;
fi
Number=$1
danwei=(B KB MB GB TB PB)
N=${#danwei[*]}
i=0
while [ $Number -ge 1024 -a  $i -lt $N ];
do
    Number=$((Number/1024))
    i=$((i+1))
    if [ $Number -lt 1024 ];then
        break;
    fi
done
echo "$Number ${danwei[i]}"




