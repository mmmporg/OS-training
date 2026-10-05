#!/bin/sh

# env_manager.sh - Gestionnaire d'environnement shell
# Script de démonstration intégrant les concepts du Labo C

# Fonction pour afficher le menu
show_menu() {
    echo "=========================================="
    echo "      GESTIONNAIRE D'ENVIRONNEMENT"
    echo "=========================================="
    echo "1. Lister les variables d'environnement"
    echo "2. Ajouter une variable d'environnement"
    echo "3. Modifier une variable d'environnement"
    echo "4. Supprimer une variable d'environnement"
    echo "5. Afficher les fichiers de configuration"
    echo "6. Manipulation de chaînes"
    echo "7. Calculs arithmétiques"
    echo "8. Quitter"
    echo "=========================================="
    printf "Choix: "
}

# Fonction pour lister les variables d'environnement
list_env_vars() {
    echo "=== VARIABLES D'ENVIRONNEMENT ==="
    env | head -20
    echo "..."
    echo "Total: $(env | wc -l) variables"
    echo ""
}

# Fonction pour ajouter une variable
add_var() {
    printf "Nom de la variable: "
    read var_name
    printf "Valeur: "
    read var_value
    export "$var_name=$var_value"
    echo "Variable $var_name ajoutée avec la valeur: $var_value"
    echo ""
}

# Fonction pour modifier une variable
modify_var() {
    printf "Nom de la variable à modifier: "
    read var_name
    if [ -n "$(eval echo \${$var_name+x})" ]; then
        printf "Nouvelle valeur: "
        read var_value
        export "$var_name=$var_value"
        echo "Variable $var_name modifiée"
    else
        echo "La variable $var_name n'existe pas"
    fi
    echo ""
}

# Fonction pour supprimer une variable
remove_var() {
    printf "Nom de la variable à supprimer: "
    read var_name
    unset "$var_name"
    echo "Variable $var_name supprimée"
    echo ""
}

# Fonction pour afficher les fichiers de configuration
show_config_files() {
    echo "=== FICHIERS DE CONFIGURATION ==="
    for file in "$HOME/.bashrc" "$HOME/.profile" "$HOME/.zshrc" "/etc/profile"; do
        if [ -f "$file" ]; then
            echo "✓ $file existe"
        else
            echo "✗ $file n'existe pas"
        fi
    done
    echo ""
}

# Fonction de manipulation de chaînes
string_manip() {
    echo "=== MANIPULATION DE CHAÎNES ==="
    printf "Entrez une chaîne: "
    read input_string
    
    echo "Longueur: $(echo "$input_string" | wc -c)"
    echo "Majuscules: $(echo "$input_string" | tr '[:lower:]' '[:upper:]')"
    echo "Minuscules: $(echo "$input_string" | tr '[:upper:]' '[:lower:]')"
    echo "Sans espaces: $(echo "$input_string" | tr -d ' ')"
    echo ""
}

# Fonction de calculs arithmétiques
arithmetic() {
    echo "=== CALCULS ARITHMÉTIQUES ==="
    printf "Premier nombre: "
    read num1
    printf "Deuxième nombre: "
    read num2
    
    echo "$num1 + $num2 = $(($num1 + $num2))"
    echo "$num1 - $num2 = $(($num1 - $num2))"
    echo "$num1 * $num2 = $(($num1 * $num2))"
    if [ "$num2" -ne 0 ]; then
        echo "$num1 / $num2 = $(($num1 / $num2))"
        echo "$num1 % $num2 = $(($num1 % $num2))"
    fi
    echo ""
}

# Boucle principale
while true; do
    show_menu
    read choice
    
    case "$choice" in
        1) list_env_vars ;;
        2) add_var ;;
        3) modify_var ;;
        4) remove_var ;;
        5) show_config_files ;;
        6) string_manip ;;
        7) arithmetic ;;
        8) echo "Au revoir!"; exit 0 ;;
        *) echo "Choix invalide" ;;
    esac
done
