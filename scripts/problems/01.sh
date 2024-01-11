#!/bin/bash

# Write a script that takes a directory as an argument and counts the number of files in that directory.

printDash() {
    for ((i=0; i<$1; i++)); do
        echo -n "-"
    done
}

echo "Processing!!"
echo ""

find C:/ -type d -name $1 | while read -r d; do
    str="Files in Directory: $d are $(find "$d" -type f | wc -l)"
    length=$(expr length "$str")
    echo "$str"
    echo "$(printDash $length)"
done