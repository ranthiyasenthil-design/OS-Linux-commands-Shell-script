#!/bin/bash
# Demonstrating the shift command

while (( "$#" ))
do
    echo $1
    shift
done
