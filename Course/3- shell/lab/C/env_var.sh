#!/bin/sh

# Script de démonstration des variables d'environnement

echo "=== VARIABLES D'ENVIRONNEMENT EXISTANTES ==="
echo "PATH: $PATH"
echo "HOME: $HOME"
echo "USER: $USER"
echo "SHELL: $SHELL"
echo ""

# Définition d'une variable d'environnement
echo "=== DÉFINITION D'UNE VARIABLE D'ENVIRONNEMENT ==="
export MY_VAR="ma_variable_environnement"
echo "MY_VAR définie: $MY_VAR"
echo ""

# Modification temporaire d'une variable d'environnement
echo "=== MODIFICATION TEMPORAIRE DE PATH ==="
OLD_PATH="$PATH"
export PATH="/custom/path:$PATH"
echo "PATH modifié: $PATH"
echo ""

# Différence entre variable shell et variable d'environnement
echo "=== DIFFÉRENCE VARIABLE SHELL vs ENVIRONNEMENT ==="
shell_var="variable_shell_only"
export env_var="variable_environnement"

echo "Variable shell: $shell_var"
echo "Variable environnement: $env_var"
echo ""

# Utilisation de env pour lister les variables d'environnement
echo "=== LISTE DES VARIABLES D'ENVIRONNEMENT (env) ==="
echo "Nombre de variables d'environnement:"
env | wc -l
echo ""
echo "Variables personnalisées:"
env | grep -E "MY_VAR|env_var" || echo "Aucune variable personnalisée trouvée"
echo ""
