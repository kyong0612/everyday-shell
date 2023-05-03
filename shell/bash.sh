#!/bin/sh

echo "seq 4の出力から、odd_1, odd_3と、event_2, event_4というディレクトリを作る"
# seq 4 \
# | awk '$1%2==0{print"mkdir -p tmp/even_"$1}$1%2{print"mkdir -p tmp/odd_"$1}' \
# | bash

# seq 4 \
# | awk '{print "mkdir tmp/"($1%2?"odd_": "even_")$1}' \
# | bash

seq 4 \
| awk '{if($1%2){a="odd_"}else{a="even_"};print "mkdir tmp/"a$1}' \
| bash