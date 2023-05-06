#!/bin/sh

./init.sh

cd ./tmp

time find . \
| sed 's;^\./;;' \
| grep -v ^\\.$ \
| grep -v ^0 \
| awk '{print $1,sprintf("%07d", $1)}' \
| xargs -n2 -P2 mv 


echo "clean up"
ls -U | xargs -P2 rm
