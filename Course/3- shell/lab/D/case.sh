#!/bin/sh

#instruction case
var=3
case $var in
    1)
        echo "that is case 1"
        ;;
    2)
        echo "that is case 2"
        ;;
    3)
        echo "that is case 3"
        ;;
    *)
        echo "autre"
        ;;
esac

# Case avec patterns wildcard (*)
echo "=== PATTERNS AVEC * ==="
filename="test.txt"
case $filename in
    *.txt)
        echo "Fichier texte"
        ;;
    *.sh)
        echo "Script shell"
        ;;
    *)
        echo "Autre type de fichier"
        ;;
esac

# Case avec patterns OR (|)
echo "=== PATTERNS AVEC | ==="
choice="yes"
case $choice in
    yes|y|Y)
        echo "Réponse positive"
        ;;
    no|n|N)
        echo "Réponse négative"
        ;;
    *)
        echo "Réponse inconnue"
        ;;
esac