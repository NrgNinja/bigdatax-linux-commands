#!/bin/bash

# Check the number of arguments
if [ "$#" -ne 2 ]; then
    echo " >:( You're missing an argument, make sure to add 2!"
    exit 1
fi

filename=$1
num_records=$2

# Set the locale to C to avoid issues with byte sequences
export LC_ALL=C

# Run the script in the background, even if terminated
nohup time bash -c "
for (( i=0; i<$num_records; i++ ))
do
    # Generate two random integers
    int1=$(( RANDOM + RANDOM * 32768 ))
    int2=$(( RANDOM + RANDOM * 32768 ))

    # Generate a random ASCII string of exactly 100 characters
    string=\$(cat /dev/urandom | tr -dc '[:alnum:]' | fold -w 100 | head -n 1)

    # Append to the desired output file
    echo \"\$int1 \$int2 \$string\" >> \"$filename\"
done
" &

echo "Script is running in the background. PID: $!"