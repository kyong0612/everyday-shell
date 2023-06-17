#!/bin/bash

cat this_is_it.txt | sed -E 's/\&(amp;)+quot;/''/g'

(echo 'recode html..UTF-8 < this_is_it.txt'; yes '| recode html..UTF-8' | head) | tr -d \\n | sh
