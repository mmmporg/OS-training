#!/bin/sh

count() {
    # base case
    if [ "$1" -le 0 ]
    then
        return 0
    fi

    # recursive case
    echo "$1"
    count "$(($1 - 1))"
}

count 5
