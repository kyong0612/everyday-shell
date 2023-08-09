#!/bin/bash

strace -c xargs -n 1 < words |& grep clone | awk '{print $(NF-1)}'
