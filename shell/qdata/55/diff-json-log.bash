#!/bin/bash

# i=past-timestamp
# j=future-timestamp

# cat watch_log.json | jq '.timestamp' | while read row; do
#     j=${i}
#     i=${row}

#     if [ "$j" = "past-timestamp" ]; then
#         continue
#     fi

#     echo "diff: ${i} ${j}"
# done

cat watch_log.json | 
    jq -r '.timestamp + "\n" + .output' | 
    awk '/^2/{f=gensub(/ /,"_",1,$0)}!/^2/{print > f}'

# clean up
# rm 2020-*
