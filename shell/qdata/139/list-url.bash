#!/bin/bash

echo 'cc.bb.aa.example.com/A/B/C' | 
    awk -F'.' '{s=$NF;for(i=(NF-1);i>0;i--){s=$i"."s;print s}}' | 
    awk -F'/' '{s=$1;for(i=2;i<=NF;i++){s=s"/"$i;print s}}' | 
    sed 's%^%https://%g'
