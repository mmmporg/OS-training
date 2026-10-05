#!/bin/sh

# $1, $2, $3
values_args() {
    echo $1 $2 $3
}

# number of arguments
num_of_args() {
    echo $#
}

# using of $* and $@
values_all_args() {
    echo $*
    echo $@
}

# using of shift to declare arguments
shift_args() {
    echo $1
    shift
    echo $1
    shift
    echo $1
}

# Demonstration of default arguments
default_args() {
    echo ${1:-"default value 1"}
    echo ${2:-"default value 2"}
    echo ${3:-"default value 3"}
}

# Validation of the numbers of arguments required
validate_args() {
    if [ $# -ne 3 ]; then
        echo "Error: Invalid number of arguments"
        return 1
    fi
    echo "Valid number of arguments"
}

# Démonstrations
echo "=== ARGUMENTS POSITIONNELS ==="
values_args "arg1" "arg2" "arg3"
echo ""

echo "=== NOMBRE D'ARGUMENTS ==="
num_of_args "a" "b" "c" "d"
echo ""

echo "=== TOUS LES ARGUMENTS ($* et $@) ==="
values_all_args "un" "deux" "trois" "quatre"
echo ""

echo "=== SHIFT (DÉCALAGE D'ARGUMENTS) ==="
shift_args "premier" "deux" "trois"
echo ""

echo "=== ARGUMENTS PAR DÉFAUT ==="
default_args "valeur1"
echo ""

echo "=== VALIDATION D'ARGUMENTS ==="
validate_args "a" "b" "c"
validate_args "a" "b"
