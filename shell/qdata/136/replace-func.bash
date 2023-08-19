#!/bin/bash

sed -Ez 's/(int b.+)(void a.+)(int main.+)/\2\1\3/g' somecode.c
