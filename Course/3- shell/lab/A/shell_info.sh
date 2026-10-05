#!/bin/sh

echo $PATH

# 1- informations sur le shell
echo "Shell actuel: $SHELL"
echo "Utilisateur: $USER"
echo "Home: $HOME"
echo "Repertoire courant: $PWD"
echo "Terminal: $TERM"

# 2- historique des shells
echo ""
echo "=== HISTORIQUE DES SHELLS ==="
echo "1969 : Thompson shell (sh) - premier shell UNIX"
echo "1978 : Bourne shell (sh) - shell standard UNIX System V"
echo "1979 : C shell (csh) - syntaxe inspiree du langage C"
echo "1989 : Korn shell (ksh) - ameliorations du Bourne shell"
echo "1989 : Bourne Again shell (bash) - GNU Project, compatible POSIX"
echo "1990 : Z shell (zsh) - extensions avancees"
echo "1990 : Almquist shell (ash) - shell leger, base de dash"

# 3- comparaison des shells
echo ""
echo "=== COMPARAISON DES SHELLS ==="
echo "bash/sh : Completions similaires, demande confirmation si beaucoup de choix"
echo "zsh : Configuration du prompt au premier lancement, completion similaire a bash"
echo "fish : Auto-completion dynamique avec pagination, historique avec date/heure, coloration syntaxique, suggestions en temps reel"

# 4- portabilite POSIX
echo ""
echo "=== PORTABILITE POSIX ==="
echo "POSIX : Norme IEEE pour l'interoperabilite entre systemes UNIX"
echo "Bashisms a eviter : [[ ]], ==, (( )), arrays, set (syntaxe fish)"
echo "Principes de portabilite :"
echo "- Utiliser #!/bin/sh comme shebang"
echo "- Utiliser [ ] au lieu de [[ ]]"
echo "- Utiliser = au lieu de =="
echo "- Utiliser \$(( )) au lieu de (( ))"
echo "- Se limiter aux options de commande de base"

# 5- philosophie UNIX
echo ""
echo "=== PHILOSOPHIE UNIX ==="
echo "Do one thing and do it well : Modularite et parsimony, ex: grep, sed"
echo "Everything is a file : Uniformite et connectabilite, ex: redirections, pipes"
echo "Provide mechanism, not policy : Outils non contraignants, ex: git avec ou sans GUI"
echo "Small is beautiful : Simplicite pour faciliter debug et reduire surface d'attaque, ex: cat"