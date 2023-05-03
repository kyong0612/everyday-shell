#!/bin/sh

echo "seq 4の出力から、odd_1, odd_3と、event_2, event_4というディレクトリを作る"
seq 4 | awk '$1%2==0{print"mkdir -p tmp/even_"$1}$1%2{print"mkdir -p tmp/odd_"$1}' | bash