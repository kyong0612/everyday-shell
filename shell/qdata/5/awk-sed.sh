#!/bin/sh

# grep "^pool" ntp.conf \
# | sed -e 's/^pool //g' \

cat ntp.conf \
| awk '$1=="pool"' \
| awk '{print $2}'