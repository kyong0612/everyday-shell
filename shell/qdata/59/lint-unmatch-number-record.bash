#!/bin/bash

cat data.csv | 
    grep -Eno '[^,"]*|"([^"]*("")*)*"' | 
    sed 's/:.*//' | 
    uniq -c |
    awk '$1==2{print $2}' 

