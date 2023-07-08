#!/bin/bash

seq -f '20210101 %g day' 0 364 |
    date -f - '+%F %w' |
    awk '/2$/{print $1}' |
    awk '++a[substr($1,1,7)]==3'
