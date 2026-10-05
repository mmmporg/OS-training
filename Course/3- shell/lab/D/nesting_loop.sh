#!/bin/sh

# Boucles for imbriquees
echo "=== BOUCLES FOR IMBRIQUEES ==="
for i in 1 2 3; do
    for j in a b c; do
        echo "i=$i, j=$j"
    done
done

# Boucles while imbriquees
echo "=== BOUCLES WHILE IMBRIQUEES ==="
i=1
while [ "$i" -le 3 ]; do
    j=1
    while [ "$j" -le 3 ]; do
        echo "i=$i, j=$j"
        j=$((j + 1))
    done
    i=$((i + 1))
done

# Combinaison for et while
echo "=== COMBINAISON FOR ET WHILE ==="
for i in 1 2 3; do
    j=1
    while [ "$j" -le 2 ]; do
        echo "for: i=$i, while: j=$j"
        j=$((j + 1))
    done
done

# Affichage d'une grille
echo "=== GRILLE 3x3 ==="
for i in 1 2 3; do
    row=""
    for j in 1 2 3; do
        row="$row [$i,$j]"
    done
    echo "$row"
done

# Break/continue dans boucles imbriquees
echo "=== BREAK/CONTINUE DANS BOUCLES IMBRIQUEES ==="
for i in 1 2 3; do
    for j in 1 2 3; do
        if [ "$i" -eq 2 ] && [ "$j" -eq 2 ]; then
            echo "Skip [2,2]"
            continue
        fi
        echo "i=$i, j=$j"
    done
done

