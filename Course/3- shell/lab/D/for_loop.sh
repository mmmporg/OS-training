#!/bin/sh

# Iteration sur des fichiers dans le dossier courant
for i in *; do
    echo "$i"
done

# Iteration sur une liste de mots
for mot in "hello" "world" "test"; do
    echo "$mot"
done

# Iteration sur les arguments du script
for arg in "$@"; do
    echo "$arg"
done

for arg in "$@"; do
    for i in $(seq 1 5); do
        echo "pour $i, on a $arg"
    done
done