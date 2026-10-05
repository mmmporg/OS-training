#!/bin/sh

# Boucle while avec compteur
counter=0
while [ "$counter" -lt 5 ]; do
    echo "Compteur: $counter"
    counter=$((counter + 1))
done

# Boucle while pour lire des lignes
echo "Entrez du texte (Ctrl+D pour terminer):"
while read line; do
    echo "Lue: $line"
done

# Boucle while avec condition complexe
x=0
y=10
while [ "$x" -lt "$y" ]; do
    echo "x=$x, y=$y"
    x=$((x + 1))
    y=$((y - 1))
done
