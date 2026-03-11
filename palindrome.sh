#!/bin/bash

echo "Enter the number"
read num

s=0
rev=""
temp=$num

while [ $num -gt 0 ]
do
    # Get remainder
    s=$((num % 10))

    # Remove last digit
    num=$((num / 10))

    # Build reverse number
    rev="${rev}${s}"
done

if [ $temp -eq $rev ]
then
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi
