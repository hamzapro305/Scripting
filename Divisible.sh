#!/bin/bash

if (( $# != 2 )); then
    echo "Error: Please provide exactly two arguments."
    echo "Example <divisor> <limit>"
    exit 1
fi

for ((i = 0; i <= $2; i++)); do
    if ((i % $1 == 0)); then
        echo "$i is an Even Number"
    fi
done