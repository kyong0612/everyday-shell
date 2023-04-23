#!/bin/sh

seq 100 | grep "0" | xargs

seq 100 | grep "^8" | xargs

seq 100 | grep "8$" | xargs 

seq 100 | grep "^10*$" | xargs

seq 100 | grep "[02468]$" | xargs

seq 100 | grep "[^02468]$" | xargs

seq 100 | grep -E "^(.)\1$" | xargs