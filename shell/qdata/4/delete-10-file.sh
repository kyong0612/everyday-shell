#!/bin/sh


# too slow
# time find ./tmp \
# | xargs -P 4 grep -E "^10$"

# grep -l '^10$' -R | xargs rm

# more faster
time seq 1000000 | \
xargs -I@ -P 4 grep '^10$' -l tmp/@ | \
xargs -P 4 rm
