#!/bin/bash

# Refered two argument path filedir and textstring as seachstr
# Error 1 and exit if any of parameters missing
# Error 1 and exit if filedir do not exist


if [ $# -ne 2 ]
then
    echo "Error 1: it have to be two arguments"
    exit 1
fi

filedir=$1
seachstr=$2

echo "Path" $filedir " string to search" $seachstr

if [ ! -d "$filedir" ]
then
    echo "Error 1: Folder doesn't exist"
    exit 1
fi

# Pring message "The number of files are X and the number of matching lines Y"
# X - number of files and all subdirectories
# Y - number of matching lines found in all files

x=$(grep -rl $seachstr $filedir | wc -l)
y=$(grep -r $seachstr $filedir | wc -l)

echo "The number of files are $x and the number of matching lines are $y"

