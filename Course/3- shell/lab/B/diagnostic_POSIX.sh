#!/bin/sh

# Script de diagnostic de compatibilité POSIX
# Ce script teste la compatibilité POSIX du shell actuel
# et fournit des recommandations pour l'écriture de scripts portables

echo "=========================================="
echo "DIAGNOSTIC DE COMPATIBILITÉ POSIX"
echo "=========================================="
echo ""

# Informations sur le shell
echo "=== INFORMATIONS SHELL ==="
echo "Shell actuel: $SHELL"
echo "Utilisateur: $USER"
echo "PATH: $PATH"
echo ""

# Détection du type de shell
echo "=== TYPE DE SHELL ==="
if [ -n "$BASH_VERSION" ]; then
    echo "Bash détecté (version: $BASH_VERSION)"
    SHELL_TYPE="bash"
elif [ -n "$ZSH_VERSION" ]; then
    echo "Zsh détecté (version: $ZSH_VERSION)"
    SHELL_TYPE="zsh"
elif [ -n "$FISH_VERSION" ]; then
    echo "Fish détecté (version: $FISH_VERSION)"
    SHELL_TYPE="fish"
elif [ -n "$KSH_VERSION" ]; then
    echo "Ksh détecté (version: $KSH_VERSION)"
    SHELL_TYPE="ksh"
else
    echo "Shell POSIX standard détecté"
    SHELL_TYPE="posix"
fi
echo ""

# Tests de compatibilité POSIX
echo "=== TESTS DE COMPATIBILITÉ POSIX ==="

# Test 1: Syntaxe de test POSIX
echo "Test 1: Syntaxe de test [ ]"
if [ "test" = "test" ]; then
    echo "✓ Syntaxe [ ] fonctionne"
else
    echo "✗ Syntaxe [ ] échoue"
fi

# Test 2: Opérateur = (POSIX)
echo "Test 2: Opérateur ="
if [ "a" = "a" ]; then
    echo "✓ Opérateur = fonctionne"
else
    echo "✗ Opérateur = échoue"
fi

# Test 3: Substitution arithmétique POSIX
echo "Test 3: Substitution arithmétique \$(( ))"
RESULT=$((2 + 2))
if [ "$RESULT" = "4" ]; then
    echo "✓ Substitution arithmétique fonctionne"
else
    echo "✗ Substitution arithmétique échoue"
fi

# Test 4: Boucle while POSIX
echo "Test 4: Boucle while"
i=0
while [ "$i" -lt 2 ]; do
    i=$((i + 1))
done
if [ "$i" = "2" ]; then
    echo "✓ Boucle while fonctionne"
else
    echo "✗ Boucle while échoue"
fi

echo ""

# Recommandations pour l'écriture de scripts portables
echo "=== RECOMMANDATIONS POUR SCRIPTS PORTABLES ==="
echo ""
echo "1. Utilisez toujours #!/bin/sh comme shebang pour la portabilité"
echo "2. Utilisez [ ] au lieu de [[ ]]"
echo "3. Utilisez = au lieu de =="
echo "4. Utilisez \$(( )) pour l'arithmétique"
echo "5. Évitez les tableaux (non POSIX)"
echo "6. Évitez les boucles for avec syntaxe C"
echo "7. Utilisez des outils externes (sed, awk) pour les manipulations complexes"
echo "8. Testez vos scripts avec plusieurs shells (sh, dash, bash)"
echo ""

# Conclusion
echo "=== CONCLUSION ==="
echo "Type de shell détecté: $SHELL_TYPE"
if [ "$SHELL_TYPE" = "posix" ] || [ "$SHELL_TYPE" = "bash" ] || [ "$SHELL_TYPE" = "zsh" ] || [ "$SHELL_TYPE" = "ksh" ]; then
    echo "✓ Ce shell est compatible POSIX"
    echo "✓ Vos scripts POSIX fonctionneront correctement"
else
    echo "✗ Ce shell n'est pas compatible POSIX"
    echo "✗ Utilisez des scripts spécifiques pour ce shell"
fi
echo ""
echo "Diagnostic terminé"
