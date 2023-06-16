#!/bin/bash

cat diarydiary.txt | tr -d '\n' | grep -oE '(.+)\1'
