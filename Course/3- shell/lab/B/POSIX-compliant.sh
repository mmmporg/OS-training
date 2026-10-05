#!/bin/sh

# Script POSIX-compliant de test

# Affichage d'un message
echo "Test de compatibilité POSIX"

# Utilisation de variables
MESSAGE="Bonjour depuis un script POSIX"
NOMBRE=42

echo "$MESSAGE"
echo "Le nombre est: $NOMBRE"

# Condition simple POSIX
if [ "$NOMBRE" -gt 10 ]; then
    echo "Le nombre est supérieur à 10"
else
    echo "Le nombre est inférieur ou égal à 10"
fi

# Boucle POSIX
echo "Comptage:"
i=1
while [ "$i" -le 5 ]; do
    echo "  $i"
    i=$((i + 1))
done

echo "Script terminé"
