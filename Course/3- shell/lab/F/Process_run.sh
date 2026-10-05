#!/bin/sh

# run a process in foreground
sh

# in background
zsh &

# list process
ps

# kill a process
kill %2


# job manager

# create a job
job() {
    "$@" &
    disown
}

# list jobs
jobs

# stop a job
stop() {
    kill %"$1"
}
