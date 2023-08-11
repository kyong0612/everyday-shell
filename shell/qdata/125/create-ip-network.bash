#!/bin/bash

echo "add IP address to eno1"
seq 100 200 | sudo xargs -@ ip addr add local 192.168.2.@/24 dev eno1label eno1:@


echo "delete IP address to eno1"
seq 100 200 | sudo xargs -@ ip addr del local 192.168.2.@/24 dev eno1label eno1:@

