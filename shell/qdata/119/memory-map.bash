#!/bin/bash

cat sys/firmware/memmap/{0..8}/{start,end,type} |
    paste - - - |
    awk -F'\t' '{printf "%016x-%016x %s\n",strtonum($1),strtonum($2)+1,$3}'
