#!/bin/bash

awk 'BEGIN{getline o<"os.csv";getline b<"browser.csv";getline s<"service.csv";split(o,os,",");split(b,br,",");split(s,sv,",");for(i in os)for(j in br)if((br[j]!="IE"||os[i]=="Windows")&&(br[j]!="Safari"||os[i]=="macOS"))for(k in sv)print os[i],br[j],sv[k];}'
