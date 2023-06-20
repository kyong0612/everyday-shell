#!/bin/bash

echo "2,3列目を足す"
cat table.txt | awk '{print $0,$2+$3}'

echo "縦に集計"
cat table.txt | awk '{print;a+=$2;b+=$3}END{print "計",a,b}'

echo "a,bごとに縦に集計"
cat table.txt | awk '{print;x[$1]+=$2;y[$1]+=$3}END{for(k in x){print k"計",x[k],y[k]}}'

echo "2,3列目を足し、4項目の小数点以下2桁目を四捨五入して5列目に出力"
cat table.txt | awk '{print $0,$2+$3}' | awk '{print $0,int(($4 + ($4>0?0.05:-0.05))*10)/10}'
