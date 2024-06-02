#!/bin/bash

# input file must be provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

input_file=$1
output_file="${input_file%.txt}-sorted.txt"

# Sort the file numerically by the first column and measure the time taken
time sort -n -k1,1 "$input_file" > "$output_file"

echo "Sorted file created: $output_file"