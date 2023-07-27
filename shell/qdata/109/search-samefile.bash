#!/bin/bash

sudo find /etc -type f | 
    sudo xargs md5sum |
    awk '{a[$1]=a[$1]" "$2}END{for(k in a){print k, a[k]}}' |
    awk 'NF>2'
