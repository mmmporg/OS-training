#!/bin/sh

# return value of a function

# # Fonction qui retourne une valeur
# fonction() {
#     echo "On va retourner la valeur 42"
#     return 42
# }
# # Appel de la fonction et stockage de la valeur de retour
# valeur_retournee=$(fonction)
# echo "La valeur de retour est $valeur_retournee"

# En POSIX, 'return' ne retourne que des codes de sortie (0-255)
# Pour retourner une chaîne ou un nombre, on utilise 'echo'

# Fonction qui retourne un code de sortie
check_file() {
    if [ -f "$1" ]; then
        return 0
    else
        return 1
    fi
}

# Fonction qui "retourne" une valeur via echo
get_value() {
    echo "42"
}

# Test du code de retour
check_file "/etc/passwd"
if [ $? -eq 0 ]; then
    echo "Le fichier existe (code retour: 0)"
else
    echo "Le fichier n'existe pas (code retour: 1)"
fi

# Récupération de la valeur via echo
value=$(get_value)
echo "Valeur récupérée: $value"
