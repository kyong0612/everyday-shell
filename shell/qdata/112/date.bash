#!/bin/bash


echo "$(cat /sys/class/rtc/rtc0/date)" "$(cat /sys/class/rtc/rtc0/time)"

