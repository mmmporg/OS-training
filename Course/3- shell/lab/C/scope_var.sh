#!/bin/sh

var_global="global variable"

myfunc() {
    local var_local="local variable"
    echo $var_local
}

myfunc
echo $var_local
echo $var_global
