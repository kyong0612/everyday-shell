#!/bin/bash

seq 0 365 |
    xargs -I@ date '+%F %a' -d '2017-02-24 @day' |
    grep ^2017 |
    grep Fri |
    tac |
    uniq -w7 |
    tac
