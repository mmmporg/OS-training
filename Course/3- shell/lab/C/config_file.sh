#!/bin/sh

# Script de démonstration des fichiers de configuration shell

echo "=== FICHIERS DE CONFIGURATION COURANTS ==="
echo "Fichiers utilisateur:"
echo "  ~/.bashrc - Configuration bash interactive"
echo "  ~/.profile - Configuration shell de connexion"
echo "  ~/.zshrc - Configuration zsh"
echo "  ~/.bash_profile - Configuration bash de connexion"
echo ""
echo "Fichiers système:"
echo "  /etc/profile - Configuration globale de connexion"
echo "  /etc/bash.bashrc - Configuration globale bash"
echo "  /etc/environment - Variables d'environnement globales"
echo ""

echo "=== VÉRIFICATION DES FICHIERS EXISTANTS ==="
if [ -f "$HOME/.bashrc" ]; then
    echo "✓ ~/.bashrc existe"
else
    echo "✗ ~/.bashrc n'existe pas"
fi

if [ -f "$HOME/.profile" ]; then
    echo "✓ ~/.profile existe"
else
    echo "✗ ~/.profile n'existe pas"
fi

if [ -f "$HOME/.zshrc" ]; then
    echo "✓ ~/.zshrc existe"
else
    echo "✗ ~/.zshrc n'existe pas"
fi

if [ -f "/etc/profile" ]; then
    echo "✓ /etc/profile existe"
else
    echo "✗ /etc/profile n'existe pas"
fi
echo ""

echo "=== ORDRE DE CHARGEMENT (BASH) ==="
echo "1. /etc/profile (système, shell de connexion)"
echo "2. ~/.bash_profile (utilisateur, shell de connexion)"
echo "3. ~/.bashrc (utilisateur, shell interactif)"
echo "4. /etc/bash.bashrc (système, shell interactif)"
echo ""
echo "Note: L'ordre peut varier selon le shell et le système"
echo ""

echo "=== DÉFINITION DE VARIABLES DANS LES FICHIERS ==="
echo "Exemple de contenu typique:"
echo "  export EDITOR=vim"
echo "  export PATH=\$PATH:/usr/local/bin"
echo "  alias ll='ls -la'"
echo "  export MY_VAR=value"
echo ""

echo "=== RECHARGEMENT DES FICHIERS DE CONFIGURATION ==="
echo "Pour recharger un fichier de configuration sans redémarrer:"
echo "  source ~/.bashrc"
echo "  . ~/.bashrc"
echo ""
echo "Note: Les modifications ne s'appliquent qu'au shell actuel"
echo ""
