#!/bin/sh

# Differents simple functions
func_add() {
    echo $1 + $2 = $(( $1 + $2 ))
}

func_sub() {
    echo $1 - $2 = $(( $1 - $2 ))
}

func_mul() {
    echo $1 * $2 = $(( $1 * $2 ))
}

func_div() {
    echo $1 / $2 = $(( $1 / $2 ))
}

# Calling of these functions
func_add 2 3
func_div 10 2
func_mul 5 6
func_sub 10 4


# Fonction sans paramètre
func_no_param() {
    echo "Cette fonction n'a pas de paramètre"
}

# Appel de la fonction sans paramètre
func_no_param

# Fonction avec paramètre optionnel
func_with_param() {
    if [ $# -eq 0 ]; then
        echo "Cette fonction a un paramètre optionnel"
    else
        echo "Voici votre paramètre : $1"
    fi
}

# Appel de la fonction avec paramètre
func_with_param "Hello"

# Appel de la fonction sans paramètre
func_with_param

# Démonstration de l'ordre de définition
echo "=== ORDRE DE DÉFINITION ==="
echo "Une fonction doit être définie AVANT d'être appelée"
echo "Si on essaie d'appeler une fonction non définie, cela échoue"
echo ""

# Démonstration de la réutilisation de code
echo "=== RÉUTILISATION DE CODE ==="
echo "Appel multiple de la même fonction avec différents paramètres:"
func_add 5 10
func_add 100 200
func_add 7 3
echo "Sans fonction, il faudrait répéter le code à chaque fois"
