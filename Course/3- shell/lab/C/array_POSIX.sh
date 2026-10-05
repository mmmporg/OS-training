#!/bin/sh

# Démonstration : Tableaux non POSIX vs alternative POSIX

echo "=== APPROCHE NON-POSIX (tableaux) ==="
echo "Cette syntaxe NE fonctionne PAS avec dash (POSIX strict)"
echo "tableau=(5 3 8 6)  # Syntaxe bash uniquement"
echo ""

echo "=== APPROCHE POSIX (chaînes avec séparateurs) ==="
# Alternative POSIX : chaîne avec séparateurs
numbers="5:3:8:6"

# Accès au premier élément
first=$(echo "$numbers" | cut -d':' -f1)
echo "Premier élément: $first"

# Accès au troisième élément
third=$(echo "$numbers" | cut -d':' -f3)
echo "Troisième élément: $third"

# Nombre d'éléments
count=$(echo "$numbers" | tr ':' '\n' | wc -l)
echo "Nombre d'éléments: $count"

# Itération sur les éléments
echo "Itération sur les éléments:"
echo "$numbers" | tr ':' '\n' | while read num; do
    echo "  - $num"
done

echo ""
echo "=== CONCLUSION ==="
echo "Les tableaux ne sont pas POSIX. Utilisez des chaînes avec séparateurs"
echo "et des outils comme cut, tr, et sed pour la manipulation."