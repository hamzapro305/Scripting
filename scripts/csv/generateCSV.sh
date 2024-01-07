#!/bin/bash

filename="sample.csv"

# Create the CSV file with headers
echo "Name,Age,City,Occupation,Salary" > "$filename"

# Generate random data for each line
for ((i=1; i<=100; i++))
do
    name="Person$i"
    age=$((RANDOM % 50 + 20))
    city=("New York" "London" "Paris" "Berlin" "Tokyo")
    occupation=("Engineer" "Teacher" "Doctor" "Artist" "Programmer")
    salary=$((RANDOM % 5000 + 3000))

    echo "$name,$age,${city[RANDOM % ${#city[@]}]},${occupation[RANDOM % ${#occupation[@]}]},$salary" >> "$filename"
done

echo "CSV file '$filename' created successfully."