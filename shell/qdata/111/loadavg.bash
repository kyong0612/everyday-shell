#!/bin/bash

cat /proc/loadavg | awk '{print $1, $2, $3}'
