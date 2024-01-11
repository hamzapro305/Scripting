#!/bin/bash

# Write a bash script that takes a file as input and sorts its lines in descending order based on the length of each line

# Check if a file is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi
filename="$1"
# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File not found: $filename"
    exit 1
fi

# Sort lines in descending order based on line length
sorted_file="${filename}_sorted.txt"  # Output file with "_sorted" suffix
awk '{ print length "," $0 | "sort -r -t, -k1,1" }' "$filename" > "$sorted_file"
echo "Lines in $filename sorted in descending order based on length. Result saved to $sorted_file."