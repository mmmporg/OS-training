#!/bin/sh

# Note: 'local' n'est pas POSIX
# En POSIX, on utilise des conventions de nommage

# global variable
var="I am the global variable"

func() {
    # Convention: préfixe __ pour les variables "locales"
    __local_var="I am the local variable"
    echo "$var"
    echo "$__local_var"
}

func
echo "$var is available everywhere in the code"
echo "__local_var is not available outside the function (by convention)"
