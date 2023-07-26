#!/bin/bash

echo "### Killed process プロセスID(プロセス名)という形式で記録されているプロセス名とその回数"
zcat syslog.gz |
    grep Killed |
    awk '{print $10}' |
    tr -d '()' |
    awk '{a[$1]+=1}END{for(v in a)print v,a[v]}'

echo "### 「プロセス名 invoked oom-killer:......」という形式で記録されているプロセス名とその回数"
zcat syslog.gz |
    grep invoked |
    sed 's/ invoked.*$//' |
    sed 's/^.*[0-9]]//' |
    sort |
    uniq -c
