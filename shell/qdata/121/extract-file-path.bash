#!/bin/bash

strace seq 10000000 2> temp | head

cat temp | grep -oE '"(/[^/"]*)*"'
