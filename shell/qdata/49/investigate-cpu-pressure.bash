#!/bin/bash

cat top.log |
     grep -E '^ *[0-9]+ ' |
     awk '{x=$9;for(i=1;i<12;i++)$i="";a[$0]+=x}END{for(k in a)print a[k],k}' |
     sort -k 1,1nr |
     head -n 1

