#!/bin/sh

awk -F: '{print $(NF-2)}' access.log \
| awk '$1<"12"{print "午前"}$1>="12"{print "午後"}' \
| sort \
| uniq -c

date +%p

date "+%Y%m%d %H:%M:%S"
