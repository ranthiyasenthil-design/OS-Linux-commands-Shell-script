#!/bin/bash
# store arguments in a special array
args=("$@")

# get number of elements
ELEMENTS=${#args[@]}

# echo each element in array using for loop
for (( i=0; i<$ELEMENTS; i++ ))
do
    echo ${args[$i]}
done
