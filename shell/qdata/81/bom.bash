#!/bin/bash


cat bom.txt |
    xxd -p |
    sed "1s/^efbbbf/$(echo -n '[BOM]' | xxd -p)/" | 
    xxd -p -r

cat nobom.txt |
    xxd -p |
    sed "1s/^efbbbf/$(echo -n '[BOM]' | xxd -p)/" | 
    xxd -p -r
