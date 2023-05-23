#!/bin/bash

if [ -z "$1" ]; then
    read x
else
    x=$1
fi

echo $((x * 2))
