#!/bin/bash

tr ',' ' ' < num.csv | 
    xargs -n 1 |
    tr -d ' ' |
    xargs |
    tr ' ' + |
    bc

