#!/bin/sh

# # Load the math function library
# . /usr/share/lib/mathfunc.sh

# # Calling of these functions
# echo $(func_add 2 3)
# echo $(func_div 10 2)
# echo $(func_mul 5 6)
# echo $(func_sub 10 4)

# echo "Math function library"
# echo "--------------------"

# # Load the string function library
# . /usr/share/lib/stringfunc.sh

# # Calling of these functions
# strlength "Hello World"
# strtoupper "Hello World"
# strlower "Hello World"
# strindex "Hello World" "W"
# strreplace "Hello World" "W" "J"

# echo "String function library"
# echo "---------------------"

# # Load the file function library
# . /usr/share/lib/filefunc.sh

# # Calling of these functions
# file_exists "filefunc.sh"
# file_isfile "filefunc.sh"
# file_isdir "filefunc.sh"
# file_size "filefunc.sh"
# file_md5 "filefunc.sh"

# echo "File function library"
# echo "--------------------"

# # Load the shell script function library
# . /usr/share/lib/shellfunc.sh

# # Calling of these functions
# get_filename "filefunc.sh"
# get_dirname "filefunc.sh"

# echo "Shell script function library"
# echo "----------------------------"

# Version POSIX utilisant uniquement les fonctions disponibles
echo "=== VERSION POSIX ==="
echo ""

# Mathématiques (arithmétique POSIX)
a=2
b=3
echo "Mathématiques:"
echo "$a + $b = $(($a + $b))"
echo "$a - $b = $(($a - $b))"
echo "$a * $b = $(($a * $b))"
echo "$a / $b = $(($a / $b))"
echo ""

# Chaînes de caractères
str="Hello World"
echo "Chaînes de caractères:"
echo "Longueur: ${#str}"
echo "Majuscules: $(echo "$str" | tr '[:lower:]' '[:upper:]')"
echo "Minuscules: $(echo "$str" | tr '[:upper:]' '[:lower:]')"
echo "Index de 'W': $(echo "$str" | awk '{print index($0, "W")}')"
echo "Remplacement W->J: $(echo "$str" | sed 's/W/J/g')"
echo ""

# Fichiers
file="/etc/passwd"
echo "Fichiers:"
echo "Fichier existe: $([ -f "$file" ] && echo "true" || echo "false")"
echo "Est un répertoire: $([ -d "$file" ] && echo "true" || echo "false")"
echo ""

# Chemins
path="/usr/bin/bash"
echo "Chemins:"
echo "Nom de fichier: ${path##*/}"
echo "Répertoire: ${path%/*}"
