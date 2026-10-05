#!/bin/sh

# Script de manipulation de chaînes POSIX

echo "=== CONCATÉNATION DE CHAÎNES ==="
str1="Bonjour"
str2="Monde"
result="$str1 $str2"
echo "Concaténation: $result"
echo ""

echo "=== EXTRACTION DE SOUS-CHAÎNES ==="
text="Hello World"
# Extraire les 5 premiers caractères
first_five=$(echo "$text" | cut -c1-5)
echo "5 premiers caractères: $first_five"

# Extraire les caractères 7-11
middle=$(echo "$text" | cut -c7-11)
echo "Caractères 7-11: $middle"
echo ""

echo "=== REMPLACEMENT DE CHAÎNES ==="
original="Hello World"
replaced=$(echo "$original" | sed 's/World/POSIX/')
echo "Original: $original"
echo "Remplacé: $replaced"
echo ""

echo "=== LONGUEUR DE CHAÎNE ==="
string="POSIX Shell"
# Méthode 1: expr
length=$(expr length "$string")
echo "Longueur (expr): $length"
# Méthode 2: wc (sans compter le newline)
length2=$(echo -n "$string" | wc -c)
echo "Longueur (wc): $length2"
echo ""

echo "=== SUPPRESSION D'ESPACES ==="
with_spaces="  Hello World  "
# Supprimer les espaces au début
no_leading=$(echo "$with_spaces" | sed 's/^[[:space:]]*//')
echo "Sans espaces au début: '$no_leading'"

# Supprimer les espaces à la fin
no_trailing=$(echo "$with_spaces" | sed 's/[[:space:]]*$//')
echo "Sans espaces à la fin: '$no_trailing'"

# Supprimer tous les espaces
no_spaces=$(echo "$with_spaces" | tr -d ' ')
echo "Sans aucun espace: '$no_spaces'"
echo ""

echo "=== CONVERSION MAJUSCULES/MINUSCULES ==="
mixed="Hello World"
uppercase=$(echo "$mixed" | tr '[:lower:]' '[:upper:]')
lowercase=$(echo "$mixed" | tr '[:upper:]' '[:lower:]')
echo "Original: $mixed"
echo "Majuscules: $uppercase"
echo "Minuscules: $lowercase"
echo ""
