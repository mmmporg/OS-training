#!/bin/sh

# Fonctions avancées POSIX

# 1. Fonctions comme arguments (via eval)
apply_func() {
    __func_name="$1"
    __value="$2"
    eval "$__func_name $__value"
}

double() {
    echo "$(($1 * 2))"
}

square() {
    echo "$(($1 * $1))"
}

echo "=== FONCTIONS COMME ARGUMENTS ==="
echo "Double de 5: $(apply_func double 5)"
echo "Carré de 5: $(apply_func square 5)"
echo ""

# 2. Composition de fonctions
compose() {
    __func1="$1"
    __func2="$2"
    __value="$3"
    __result=$(eval "$__func1 $__value")
    eval "$__func2 $__result"
}

echo "=== COMPOSITION DE FONCTIONS ==="
echo "Double puis carré de 3: $(compose double square 3)"
echo ""

# 3. Fonctions avec structures de données (chaînes délimitées)
# Simuler un tableau avec des chaînes séparées par des virgules
array_map() {
    __func="$1"
    __array="$2"
    __result=""
    IFS=','
    for __item in $__array; do
        __mapped=$(eval "$__func $__item")
        if [ -z "$__result" ]; then
            __result="$__mapped"
        else
            __result="$__result,$__mapped"
        fi
    done
    echo "$__result"
}

array_filter() {
    __func="$1"
    __array="$2"
    __result=""
    IFS=','
    for __item in $__array; do
        if eval "$__func $__item"; then
            if [ -z "$__result" ]; then
                __result="$__item"
            else
                __result="$__result,$__item"
            fi
        fi
    done
    echo "$__result"
}

is_even() {
    [ $(($1 % 2)) -eq 0 ]
}

echo "=== FONCTIONS AVEC STRUCTURES DE DONNÉES ==="
echo "Map double sur [1,2,3,4]: $(array_map double 1,2,3,4)"
echo "Filter even sur [1,2,3,4,5,6]: $(array_filter is_even 1,2,3,4,5,6)"
echo ""

# 4. Callbacks avec eval
process_with_callback() {
    __data="$1"
    __callback="$2"
    echo "Traitement de: $__data"
    eval "$__callback $__data"
}

log_callback() {
    echo "Callback appelé avec: $1"
}

echo "=== CALLBACKS ==="
process_with_callback "test_data" log_callback
echo ""

# 5. Traitement de données avec fonctions
pipeline() {
    __input="$1"
    __step1="$2"
    __step2="$3"
    __temp=$(eval "$__step1 $__input")
    eval "$__step2 $__temp"
}

to_upper() {
    echo "$1" | tr '[:lower:]' '[:upper:]'
}

add_prefix() {
    echo "PREFIX_$1"
}

echo "=== PIPELINE DE TRAITEMENT ==="
echo "Pipeline: $(pipeline hello to_upper add_prefix)"
echo ""

# 6. Programmation fonctionnelle basique
reduce() {
    __func="$1"
    __array="$2"
    __initial="$3"
    __result="$__initial"
    IFS=','
    for __item in $__array; do
        __result=$(eval "$__func $__result $__item")
    done
    echo "$__result"
}

sum() {
    echo "$(($1 + $2))"
}

echo "=== REDUCE (FONCTIONNEL) ==="
echo "Sum de [1,2,3,4,5]: $(reduce sum 1,2,3,4,5 0)"
