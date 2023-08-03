#!/bin/bash


lsblk -o KNAME,FSTYPE,MOUNTPOINT |
    awk 'NF==2' |
    grep fat |
    awk '{P="/mnt/disk"NR; print "mkdir -p "P" ;mount -t vfat /dev/"$1,P}' |
    sudo sh -v
