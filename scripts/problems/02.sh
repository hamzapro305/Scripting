#!/bin/bash

# Count Number of Entries in CSV File

# Check if a file is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filePath="$1"

# Check if the file exists
if [ ! -f "$filePath" ]; then
    echo "Error: File not found: $filePath"
    exit 1
fi

no=$(cat $filePath | awk "NR>1" | grep -c \n)
echo "Number Of Entries: $no"