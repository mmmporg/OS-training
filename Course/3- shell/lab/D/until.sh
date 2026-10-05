#!/bin/sh

# Boucle until avec compteur
counter=0
until [ "$counter" -ge 5 ]; do
    echo "Compteur: $counter"
    counter=$((counter + 1))
done

# Comparaison while vs until
echo "=== WHILE vs UNTIL ==="
echo "While: s'exécute TANT QUE la condition est VRAIE"
echo "Until: s'exécute TANT QUE la condition est FAUSSE"
echo ""

# Exemple while
echo "Boucle while (counter < 3):"
counter=0
while [ "$counter" -lt 3 ]; do
    echo "  while: $counter"
    counter=$((counter + 1))
done

# Exemple until équivalent
echo "Boucle until (counter >= 3):"
counter=0
until [ "$counter" -ge 3 ]; do
    echo "  until: $counter"
    counter=$((counter + 1))
done

# Boucle until attendant une condition
echo "=== Boucle until attendant une condition ==="
ready=0
until [ "$ready" -eq 1 ]; do
    echo "En attente..."
    ready=1
    echo "Prêt!"
done
