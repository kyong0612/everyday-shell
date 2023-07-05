#!/bin/bash

find . -daystart -mtime -$((8 + $(date '+%w'))) -mtime +$(date '+%w') -type f | sort
