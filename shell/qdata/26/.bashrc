#!/bin/bash

trap 'h=$(date +%-H);[ "$h" -ge 19 -o "$h" -lt 3 ] && echo 早く帰れ' SIGCHLD

# date +%-H
# 6
