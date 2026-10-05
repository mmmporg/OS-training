#!/bin/sh

# ============================================================================
# FUNCTION_LIBRARY.SH - Bibliothèque de fonctions POSIX
# ============================================================================
# Auteur: Labo E - Défi final
# Description: Bibliothèque réutilisable de fonctions shell POSIX
# Utilisation: . /path/to/function_library.sh
# ============================================================================

# ----------------------------------------------------------------------------
# FONCTIONS MATHÉMATIQUES
# ----------------------------------------------------------------------------

# math_add: Additionne deux nombres
# Usage: math_add <num1> <num2>
math_add() {
    echo "$(($1 + $2))"
}

# math_sub: Soustrait deux nombres
# Usage: math_sub <num1> <num2>
math_sub() {
    echo "$(($1 - $2))"
}

# math_mul: Multiplie deux nombres
# Usage: math_mul <num1> <num2>
math_mul() {
    echo "$(($1 * $2))"
}

# math_div: Divise deux nombres (division entière)
# Usage: math_div <num1> <num2>
math_div() {
    if [ "$2" -eq 0 ]; then
        echo "Error: Division by zero" >&2
        return 1
    fi
    echo "$(($1 / $2))"
}

# math_mod: Modulo de deux nombres
# Usage: math_mod <num1> <num2>
math_mod() {
    if [ "$2" -eq 0 ]; then
        echo "Error: Division by zero" >&2
        return 1
    fi
    echo "$(($1 % $2))"
}

# math_pow: Puissance (entière)
# Usage: math_pow <base> <exponent>
math_pow() {
    __base=$1
    __exp=$2
    __result=1
    while [ "$__exp" -gt 0 ]; do
        __result=$((__result * __base))
        __exp=$((__exp - 1))
    done
    echo "$__result"
}

# ----------------------------------------------------------------------------
# FONCTIONS DE CHAÎNES
# ----------------------------------------------------------------------------

# str_length: Longueur d'une chaîne
# Usage: str_length <string>
str_length() {
    echo "${#1}"
}

# str_upper: Convertit en majuscules
# Usage: str_upper <string>
str_upper() {
    echo "$1" | tr '[:lower:]' '[:upper:]'
}

# str_lower: Convertit en minuscules
# Usage: str_lower <string>
str_lower() {
    echo "$1" | tr '[:upper:]' '[:lower:]'
}

# str_trim: Supprime les espaces en début et fin
# Usage: str_trim <string>
str_trim() {
    echo "$1" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//'
}

# str_reverse: Inverse une chaîne
# Usage: str_reverse <string>
str_reverse() {
    echo "$1" | rev
}

# str_contains: Vérifie si une chaîne contient une sous-chaîne
# Usage: str_contains <string> <substring>
# Returns: 0 si trouvé, 1 sinon
str_contains() {
    case "$1" in
        *"$2"*) return 0 ;;
        *) return 1 ;;
    esac
}

# str_replace: Remplace une sous-chaîne
# Usage: str_replace <string> <old> <new>
str_replace() {
    echo "$1" | sed "s/$2/$3/g"
}

# str_split: Split une chaîne par un délimiteur
# Usage: str_split <string> <delimiter>
str_split() {
    echo "$1" | tr "$2" '\n'
}

# ----------------------------------------------------------------------------
# FONCTIONS DE FICHIERS
# ----------------------------------------------------------------------------

# file_exists: Vérifie si un fichier existe
# Usage: file_exists <path>
# Returns: 0 si existe, 1 sinon
file_exists() {
    [ -f "$1" ] && return 0 || return 1
}

# file_isdir: Vérifie si c'est un répertoire
# Usage: file_isdir <path>
# Returns: 0 si répertoire, 1 sinon
file_isdir() {
    [ -d "$1" ] && return 0 || return 1
}

# file_readable: Vérifie si un fichier est lisible
# Usage: file_readable <path>
# Returns: 0 si lisible, 1 sinon
file_readable() {
    [ -r "$1" ] && return 0 || return 1
}

# file_writable: Vérifie si un fichier est modifiable
# Usage: file_writable <path>
# Returns: 0 si modifiable, 1 sinon
file_writable() {
    [ -w "$1" ] && return 0 || return 1
}

# file_executable: Vérifie si un fichier est exécutable
# Usage: file_executable <path>
# Returns: 0 si exécutable, 1 sinon
file_executable() {
    [ -x "$1" ] && return 0 || return 1
}

# file_size: Taille d'un fichier en octets
# Usage: file_size <path>
file_size() {
    if [ ! -f "$1" ]; then
        echo "Error: File not found" >&2
        return 1
    fi
    wc -c < "$1" | tr -d ' '
}

# file_lines: Nombre de lignes d'un fichier
# Usage: file_lines <path>
file_lines() {
    if [ ! -f "$1" ]; then
        echo "Error: File not found" >&2
        return 1
    fi
    wc -l < "$1" | tr -d ' '
}

# ----------------------------------------------------------------------------
# FONCTIONS DE CHEMINS
# ----------------------------------------------------------------------------

# path_basename: Nom de fichier sans le chemin
# Usage: path_basename <path>
path_basename() {
    echo "${1##*/}"
}

# path_dirname: Répertoire sans le nom de fichier
# Usage: path_dirname <path>
path_dirname() {
    echo "${1%/*}"
}

# path_ext: Extension d'un fichier
# Usage: path_ext <path>
path_ext() {
    echo "${1##*.}"
}

# path_noext: Chemin sans extension
# Usage: path_noext <path>
path_noext() {
    echo "${1%.*}"
}

# ----------------------------------------------------------------------------
# FONCTIONS AVANCÉES (Programmation fonctionnelle)
# ----------------------------------------------------------------------------

# array_map: Applique une fonction à chaque élément
# Usage: array_map <function> <comma_separated_array>
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

# array_filter: Filtre les éléments selon une fonction prédicat
# Usage: array_filter <predicate_function> <comma_separated_array>
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

# array_reduce: Réduit un tableau à une seule valeur
# Usage: array_reduce <function> <comma_separated_array> <initial>
array_reduce() {
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

# ----------------------------------------------------------------------------
# FONCTIONS UTILITAIRES
# ----------------------------------------------------------------------------

# is_number: Vérifie si une chaîne est un nombre
# Usage: is_number <string>
# Returns: 0 si nombre, 1 sinon
is_number() {
    case "$1" in
        ''|*[!0-9-]*) return 1 ;;
        *-*) return 1 ;;
        *) return 0 ;;
    esac
}

# is_empty: Vérifie si une chaîne est vide
# Usage: is_empty <string>
# Returns: 0 si vide, 1 sinon
is_empty() {
    [ -z "$1" ] && return 0 || return 1
}

# clamp: Limite une valeur entre min et max
# Usage: clamp <value> <min> <max>
clamp() {
    __val=$1
    __min=$2
    __max=$3
    if [ "$__val" -lt "$__min" ]; then
        echo "$__min"
    elif [ "$__val" -gt "$__max" ]; then
        echo "$__max"
    else
        echo "$__val"
    fi
}

# ----------------------------------------------------------------------------
# FONCTIONS DE LOGGING
# ----------------------------------------------------------------------------

# log_info: Message d'information
# Usage: log_info <message>
log_info() {
    echo "[INFO] $1" >&2
}

# log_warn: Message d'avertissement
# Usage: log_warn <message>
log_warn() {
    echo "[WARN] $1" >&2
}

# log_error: Message d'erreur
# Usage: log_error <message>
log_error() {
    echo "[ERROR] $1" >&2
}

# log_debug: Message de debug
# Usage: log_debug <message>
log_debug() {
    if [ "${DEBUG:-0}" -eq 1 ]; then
        echo "[DEBUG] $1" >&2
    fi
}

# ----------------------------------------------------------------------------
# INITIALISATION
# ----------------------------------------------------------------------------

# Message de chargement
if [ "${LIB_LOADED:-0}" -eq 0 ]; then
    export LIB_LOADED=1
    # log_debug "Function library loaded"
fi
