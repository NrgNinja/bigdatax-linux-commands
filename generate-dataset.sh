#!/bin/bash

# check the number of arguments
if [ "$#" -ne 2 ]; then
    echo " >:( You're missing an argument, make sure to add 2!"
    exit 1
fi

filename=$1
num_records=$2

# set the locale to C to avoid issues with byte sequences
export LC_ALL=C

{
    for (( i=0; i<num_records; i++ ))
    do
        # generate two random integers up to 32 bits
        int1=$(( RANDOM + RANDOM * 32768 ))
        int2=$(( RANDOM + RANDOM * 32768 ))

        # generate a random ASCII string of exactly 100 characters (100 bytes)
        string=$(cat /dev/urandom | tr -dc '[:alnum:]' | fold -w 100 | head -n 1)

        echo "$int1 $int2 $string"
    done
} > "$filename" &

pid=$!

echo "generating data for ${num_records}. pls be patient..."

wait $pid

echo "the script has generated ${num_records} records! :D"
