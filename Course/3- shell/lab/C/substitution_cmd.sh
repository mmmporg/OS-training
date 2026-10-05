#!/bin/sh

# Script de démonstration de la substitution de commandes POSIX

echo "=== SYNTAXE POSIX (backticks) ==="
# Obtenir la date actuelle
current_date=`date +%Y-%m-%d`
echo "Date actuelle: $current_date"

# Compter les fichiers dans le répertoire courant
file_count=`ls | wc -l`
echo "Nombre de fichiers: $file_count"
echo ""

echo "=== SYNTAXE MODERNE ($()) ==="
# Obtenir l'utilisateur actuel
current_user=$(whoami)
echo "Utilisateur actuel: $current_user"

# Obtenir le répertoire de travail
current_dir=$(pwd)
echo "Répertoire courant: $current_dir"

# Obtenir l'uptime du système
uptime_info=$(uptime)
echo "Uptime: $uptime_info"
echo ""

echo "=== COMPARAISON DES SYNTAXES ==="
echo "Backticks (\`command\`) : Syntaxe POSIX traditionnelle"
echo "Dollar parenthèses (\$(command)) : Syntaxe moderne recommandée"
echo ""
echo "Avantages de \$() :"
echo "- Meilleure lisibilité"
echo "- Permet l'imbrication facile"
echo "- Compatible avec tous les shells POSIX"
echo ""

echo "=== IMBRICATION DE SUBSTITUTIONS ==="
# Imbrication facile avec $() - difficile avec backticks
nested_result=$(echo $(basename $(pwd)))
echo "Résultat imbriqué: $nested_result"

# Exemple pratique : obtenir le nom du répertoire parent
parent_dir=$(basename $(dirname $(pwd)))
echo "Répertoire parent: $parent_dir"
echo ""

echo "=== SUBSTITUTION DANS LES CONDITIONS ==="
# Vérifier si un répertoire existe
target_dir="/tmp"
if [ -d "$target_dir" ]; then
    dir_count=$(ls "$target_dir" | wc -l)
    echo "Le répertoire $target_dir existe et contient $dir_count éléments"
else
    echo "Le répertoire $target_dir n'existe pas"
fi

# Vérifier si une commande est disponible
if command -v git >/dev/null 2>&1; then
    git_version=$(git --version)
    echo "Git est installé: $git_version"
else
    echo "Git n'est pas installé"
fi
echo ""

echo "=== GESTION DES ERREURS ==="
# Substitution avec gestion d'erreur
result=$(nonexistent_command 2>&1) || {
    echo "Erreur: la commande a échoué"
    result="erreur"
}
echo "Résultat avec gestion d'erreur: $result"

# Exemple pratique : lecture de fichier avec gestion d'erreur
if [ -f "/etc/hostname" ]; then
    hostname=$(cat /etc/hostname)
    echo "Hostname: $hostname"
else
    echo "Impossible de lire le fichier hostname"
fi
echo ""
