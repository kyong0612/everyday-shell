#!/bin/bash

yes |
    perl -nle 'print $_ x$.' |
    while read f && touch $f; do
        echo ${#f} && rm $f
    done |
    tail -n 1
