#/bin/bash

cat bunken.txt | awk 'NR%3==1{k=$1};{print k,$0}' | sort -s -k1,1 | sed 's/...//'
