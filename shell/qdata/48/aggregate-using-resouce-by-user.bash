#!/bin/bash

ps aux | awk '{ if(NR>1){p[$1] += $3; n[$1]++} }END{for(i in p) print p[i], n[i], i }' | sort -nrk 1,2
