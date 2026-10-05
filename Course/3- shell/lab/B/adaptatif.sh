#!/bin/sh

# Script adaptatif qui détecte le shell et adapte son comportement

# Détection du shell actuel - méthode plus fiable
# Utiliser ps pour obtenir le shell parent
if [ -n "$BASH_VERSION" ]; then
    SHELL_NAME="bash"
elif [ -n "$ZSH_VERSION" ]; then
    SHELL_NAME="zsh"
elif [ -n "$FISH_VERSION" ]; then
    SHELL_NAME="fish"
elif [ -n "$KSH_VERSION" ]; then
    SHELL_NAME="ksh"
else
    # Fallback: essayer de détecter via ps
    SHELL_NAME=$(ps -p $$ -o comm= 2>/dev/null | tr -d ' ')
    if [ -z "$SHELL_NAME" ]; then
        SHELL_NAME="unknown"
    fi
fi

echo "Shell détecté: $SHELL_NAME"

# Comportement adaptatif selon le shell
case "$SHELL_NAME" in
    *bash*)
        echo "Bash détecté - Utilisation de la syntaxe bash"
        echo "Ce script peut utiliser des extensions bash si nécessaire"
        ;;
    *fish*)
        echo "Fish détecté - Utilisation de la syntaxe fish"
        echo "Note: Fish n'est pas POSIX-compliant"
        ;;
    *zsh*)
        echo "Zsh détecté - Utilisation de la syntaxe zsh"
        echo "Zsh est POSIX-compliant avec de nombreuses extensions"
        ;;
    *sh*)
        echo "Shell POSIX détecté - Utilisation de la syntaxe POSIX"
        echo "Script portable pour tous les shells POSIX"
        ;;
    *)
        echo "Shell inconnu: $SHELL_NAME"
        echo "Utilisation de la syntaxe POSIX par défaut"
        ;;
esac

echo "Script adaptatif terminé avec succès"
