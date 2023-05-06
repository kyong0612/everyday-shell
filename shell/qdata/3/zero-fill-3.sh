#!/bin/sh

./init.sh

cd ./tmp


time seq -w 10000 \
| awk '{print $1, $1}' \
| sed 's/^0*/mv /' \
| xargs -P2 -I@ sh -c @


echo "clean up"
ls -U | xargs -P2 rm
