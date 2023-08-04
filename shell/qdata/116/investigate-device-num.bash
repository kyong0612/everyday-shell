#!/bin/bash

echo "/dev配下"

ls -l /dev |
    grep '^b' |
    awk '{print $NF,$5$6}'

echo "/sys配下"

ls -l /sys/dev/block/* |
    awk '{print$9.$11}' |
    awk -F'[/ ]' '{print $NF,$5}'
