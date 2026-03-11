#!/bin/bash

if [ -d "$HOME" ] && [ -w "$HOME" ]
then
echo "The directory exists and you can write to it"
else
echo "I cannot write to the directory"
fi
