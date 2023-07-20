#!/bin/bash


split -b 1000 --numeric-suffixes=1 image.bmp image.bmp.

du -b image.bmp.??
