#!/bin/bash

cat zeroone | 
    sed 's/^/obase=16;ibase=2;/' |
    bc |
    xxd -p -r
