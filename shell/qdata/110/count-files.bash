#!/bin/bash

cd /var/log

sudo find . -type d |
    while read d; do
        echo -n $d" "
        sudo find "$d" -type f -maxdepth 1 | wc -l
    done
