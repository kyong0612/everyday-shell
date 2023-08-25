#!/bin/bash

while sleep 5; do curl -Is -o /dev/null -w '%{http_code}\n' https://www.google.com | awk '{print /200/?"Success":"Warning"}'; done
