#!/bin/bash

# clear both time text files every initiation
> generate-time.txt
> sort-time.txt

# run generation and sorting for different record sizes
for n in $1 $2 $3
do
    { time ./generate-dataset.sh "output.txt" $n ; } 2>> generate-time.txt
    { time ./sort-data.sh "output.txt" ; } 2>> sort-time.txt
done