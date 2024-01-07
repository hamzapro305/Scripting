printDash() {
    arr=()
    for ((i=0; i<$1; i++)); do
        arr+=("-")
    done
    echo "${arr[*]}"
}

# Call the function and print all items in the array
result=$(printDash 5)
echo "Array items:"