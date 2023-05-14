#!/bin/sh

cat headings.md \
| sed -r 's/^## +(.*)/\1\n---/' \
| sed -r 's/^# +(.*)/\1\n===/'