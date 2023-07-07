#!/bin/bash

seq 0 364 |
    sed 's/^/20210101 /' |
    sed 's/$/ days/' |
    date -f - '+%m %w' |
    grep 0$ |
    uniq -c |
    awk '$1==5{print $2}'
