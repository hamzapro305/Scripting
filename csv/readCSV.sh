#!/bin/bash

filename="sample.csv"

IFS=","

awk 'NR>1 {print NR "," $0}' "$filename" | while read -r id name age city occ salary; do
    # Process each column
    echo "Id: $id, Name: $name, Age: $age, City: $city, Occupation: $occ, Salary: $salary"
done