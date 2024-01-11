#!/bin/bash

# Create a bash script that reads a CSV file and calculates the sum and count of a specific column

# Check if a file and column number are provided as arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filename> <column_number>"
    exit 1
fi

filename="$1"
column_number="$2"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File not found: $filename"
    exit 1
fi

# Check if the column number is a positive integer
if ! [[ "$column_number" =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: Invalid column number. Please provide a positive integer."
    exit 1
fi

# Calculate the sum and count of the specified column
output=$(awk -F, -v col="$column_number" 'NR>1 {sum += $col; count++} END {print count","sum}' "$filename")

# Extract count and sum from the output
count=$(echo "$output" | cut -d',' -f1)
sum=$(echo "$output" | cut -d',' -f2)


# Calculate the average
if [ "$count" -gt 0 ]; then
    average=$((sum / count))
    echo "Count: $count"
    echo "Sum: $sum"
    echo "Average: $average"
else
    echo "No data to calculate average."
fi