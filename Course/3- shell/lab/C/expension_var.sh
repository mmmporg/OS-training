#!/bin/sh

# Script de démonstration de l'expansion des variables POSIX

echo "=== EXPANSION DE BASE ==="
name="World"
echo "Sans accolades: $name"
echo "Avec accolades: ${name}"
echo ""

echo "=== EXPANSION AVEC LIMITES ==="
prefix="Hello"
suffix="World"
# Sans accolades, cela ne fonctionnerait pas correctement
echo "${prefix}_${suffix}"
echo ""

echo "=== VALEURS PAR DÉFAUT ==="
empty_var=""
default_var="${empty_var:-valeur_par_defaut}"
echo "Variable vide avec défaut: $default_var"

unset_var="${unset_var:-autre_defaut}"
echo "Variable non définie avec défaut: $unset_var"

existing_var="existant"
with_default="${existing_var:-valeur_par_defaut}"
echo "Variable existante avec défaut: $with_default"
echo ""

echo "=== VALEURS CONDITIONNELLES ==="
has_value="quelque_chose"
conditional="${has_value:+valeur_conditionnelle}"
echo "Variable avec valeur: $conditional"

no_value=""
conditional_empty="${no_value:+valeur_conditionnelle}"
echo "Variable vide: '$conditional_empty'"
echo ""

echo "=== LONGUEUR DE VARIABLE ==="
text="Hello World"
length="${#text}"
echo "Longueur de '$text': $length"
echo ""

echo "=== EXPANSION AVEC ET SANS GUILLEMETS ==="
var_with_spaces="Hello World"
echo "Avec guillemets: \"$var_with_spaces\""
echo "Sans guillemets: $var_with_spaces"
echo ""

echo "=== EXPANSION DANS LES COMMANDES ==="
filename="test.txt"
echo "Création de fichier: $filename"
touch "$filename" 2>/dev/null || echo "Fichier créé (ou existe déjà)"
rm "$filename" 2>/dev/null || echo "Fichier supprimé"

path="/tmp"
echo "Contenu de $path:"
ls "$path" 2>/dev/null | head -3
echo ""
