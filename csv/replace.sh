#!/bin/bash

fileName="sample.csv"
newFileName="temp.csv"
search="New York"
replace="NewYork"

awk -v search="$search" -v replace="$replace" 'BEGIN {FS=OFS=","} {$0=gensub(search, replace, "g", $0)} 1' "$fileName" > "$newFileName"
