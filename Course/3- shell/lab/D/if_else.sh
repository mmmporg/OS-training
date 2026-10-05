#!/bin/sh

#if structure
if [ -f /etc/passwd ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

#if-elif structure
if [ -d /etc ]; then
    echo "Directory exists"
elif [ -f /etc ]; then
    echo "File exists"
else
    echo "Neither directory nor file exists"
fi

#if on variable
var=4
if [ $var -eq 4 ]; then
    echo "yes your variable is equal to ${var}"
fi