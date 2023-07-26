#!/bin/bash

# Refered two argument path filedir with filename as writefile
# and textstring as writestr
# Error 1 and exit if any of parameters missing
# Error 1 and exit if file can't be created

if [ $# -ne 2 ]
then
    echo "Error 1: it have to be two arguments"
    exit 1
fi

writefile=$1
writestr=$2

echo "Path + filename" $writefile " string to write" $writestr

mkdir -p "${writefile%/*}"

echo "$writestr" > "$writefile"
if [ ! $? -eq 0 ]
then
    echo "Can't create a file"
    exit 1 
fi

cat "$writefile"
