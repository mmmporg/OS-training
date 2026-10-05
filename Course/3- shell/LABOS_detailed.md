================================================================================
LABOS DÉTAILLÉS - COURS SHELL
================================================================================

Ce document contient les instructions détaillées pour chaque exercice de chaque labo.
À mettre à jour au fur et à mesure de l'avancement.

================================================================================
LABO A : INTRODUCTION AU SHELL
================================================================================

Exercice 1 : Identification du shell
------------------------------------
Objectif : Identifier le shell actuel et ses caractéristiques
Instructions :
1. Exécuter la commande `echo $SHELL` pour identifier le shell par défaut
2. Exécuter `ps -p $$` pour identifier le shell en cours d'exécution
3. Exécuter `echo $0` pour voir le nom du shell
4. Créer un script `identify_shell.sh` qui affiche ces informations
5. Ajouter une description du shell détecté

Résultat attendu : Script affichant le type de shell, sa version et son chemin

Exercice 2 : Historique des shells
---------------------------------
Objectif : Comprendre l'évolution historique des shells UNIX
Instructions :
1. Rechercher l'historique des shells (sh, ksh, csh, bash, zsh, fish)
2. Créer un document ou script affichant une timeline
3. Identifier les caractéristiques clés de chaque shell
4. Expliquer pourquoi POSIX a été créé

Résultat attendu : Document ou script avec timeline des shells

Exercice 3 : Rôles du shell
---------------------------
Objectif : Comprendre les différents rôles du shell dans le système
Instructions :
1. Lister les rôles principaux : interpréteur de commandes, langage de script, interface système
2. Donner des exemples concrets pour chaque rôle
3. Créer un script démontrant chaque rôle
4. Expliquer la différence entre mode interactif et mode script

Résultat attendu : Script démontrant les rôles du shell

Exercice 4 : Commandes de base
-------------------------------
Objectif : Maîtriser les commandes de base du shell
Instructions :
1. Pratiquer les commandes : ls, cd, pwd, mkdir, rm, cp, mv
2. Créer un script utilisant ces commandes
3. Ajouter des options utiles (-r, -f, -v, etc.)
4. Gérer les erreurs avec des tests

Résultat attendu : Script `basic_commands.sh` avec gestion d'erreurs

Exercice 5 : Aide et documentation
----------------------------------
Objectif : Savoir trouver de l'aide sur les commandes shell
Instructions :
1. Utiliser `man` pour consulter les manuels
2. Utiliser `--help` pour l'aide rapide
3. Utiliser `info` pour la documentation GNU
4. Créer un script qui affiche l'aide sur une commande donnée en argument

Résultat attendu : Script `help_command.sh` acceptant une commande en argument

Exercice 6 : Hello World
------------------------
Objectif : Créer le premier script shell classique
Instructions :
1. Créer un fichier `hello_world.sh`
2. Ajouter le shebang approprié (`#!/bin/sh` pour POSIX)
3. Afficher "Hello, World!" avec `echo`
4. Rendre le script exécutable (`chmod +x`)
5. Exécuter le script de différentes manières (`./`, `sh`, `source`)

Résultat attendu : Script `hello_world.sh` fonctionnel

Exercice 7 : Script avec arguments
----------------------------------
Objectif : Passer des arguments à un script shell
Instructions :
1. Créer un script `args.sh` acceptant des arguments
2. Afficher le nombre d'arguments (`$#`)
3. Afficher chaque argument (`$1`, `$2`, etc.)
4. Afficher tous les arguments (`$*`, `$@`)
5. Tester avec différents nombres d'arguments

Résultat attendu : Script `args.sh` traitant les arguments

Exercice 8 : Variables d'environnement
--------------------------------------
Objectif : Comprendre et manipuler les variables d'environnement
Instructions :
1. Lister les variables d'environnement avec `env` ou `printenv`
2. Créer une variable locale et la transformer en variable d'environnement (`export`)
3. Afficher une variable spécifique (`echo $VAR`)
4. Supprimer une variable (`unset`)
5. Créer un script démontrant ces manipulations

Résultat attendu : Script `env_vars.sh` avec manipulation de variables

Exercice 9 : Modification du PATH
----------------------------------
Objectif : Comprendre et modifier la variable PATH
Instructions :
1. Afficher le PATH actuel (`echo $PATH`)
2. Ajouter un répertoire au PATH (`export PATH=$PATH:/new/path`)
3. Créer un script dans un répertoire ajouté au PATH
4. Exécuter le script sans spécifier son chemin complet
5. Restaurer le PATH original

Résultat attendu : Démonstration de la modification du PATH

Exercice 10 : Philosophie UNIX
-------------------------------
Objectif : Comprendre les principes de la philosophie UNIX
Instructions :
1. Rechercher les principes de la philosophie UNIX
2. Expliquer : "Do one thing and do it well"
3. Expliquer : "Everything is a file"
4. Expliquer : "Use text streams for data"
5. Créer un script démontrant ces principes avec des pipes

Résultat attendu : Document ou script illustrant la philosophie UNIX

Exercice 11 : Comparaison de shells
-----------------------------------
Objectif : Comparer différents shells (bash, dash, zsh, fish)
Instructions :
1. Tester si différents shells sont installés
2. Comparer les fonctionnalités de chaque shell
3. Identifier les différences de syntaxe
4. Créer un script multi-shell compatible

Résultat attendu : Document de comparaison des shells

Exercice 12 : Portabilité POSIX
-------------------------------
Objectif : Écrire des scripts portables POSIX
Instructions :
1. Identifier les bashisms courants à éviter
2. Utiliser `sh` (POSIX shell) au lieu de `bash`
3. Tester le script avec `dash` ou `posh`
4. Valider la portabilité avec `checkbashisms`

Résultat attendu : Script POSIX portable

Défi final : shell_info.sh
--------------------------
Objectif : Créer un script complet d'information sur le shell
Instructions :
1. Créer un script `shell_info.sh` qui affiche :
   - Le type de shell actuel
   - La version du shell
   - Les variables d'environnement importantes
   - Les alias définis
   - Les fonctions définies
   - L'historique des commandes récentes
2. Le script doit être POSIX-compatible
3. Ajouter une option pour formater la sortie (JSON, texte, CSV)
4. Documenter le script avec des commentaires

Résultat attendu : Script `shell_info.sh` complet et documenté

================================================================================
LABO B : TYPES DE SHELLS
================================================================================

Exercice 1 : Identification des shells POSIX
-------------------------------------------
Objectif : Identifier quels shells sont conformes POSIX
Instructions :
1. Lister les shells installés sur le système (`cat /etc/shells`)
2. Pour chaque shell, vérifier sa conformité POSIX
3. Tester avec des scripts POSIX basiques
4. Documenter les résultats

Résultat attendu : Liste des shells POSIX et non-POSIX

Exercice 2 : Test de compatibilité POSIX
-----------------------------------------
Objectif : Tester la compatibilité POSIX de différents shells
Instructions :
1. Créer un script de test POSIX avec des fonctionnalités de base
2. Exécuter le script avec différents shells
3. Noter les différences de comportement
4. Identifier les incompatibilités

Résultat attendu : Rapport de compatibilité POSIX

Exercice 3 : Comparaison des caractéristiques POSIX
------------------------------------------------
Objectif : Comparer les caractéristiques POSIX des shells
Instructions :
1. Comparer les fonctionnalités POSIX supportées par chaque shell
2. Tester : variables, structures de contrôle, fonctions, pipes
3. Créer une matrice de compatibilité
4. Identifier les fonctionnalités manquantes

Résultat attendu : Matrice de compatibilité POSIX

Exercice 4 : Identification des shells non-POSIX
----------------------------------------------
Objectif : Identifier les fonctionnalités non-POSIX des shells
Instructions :
1. Identifier les bashisms, zshisms, etc.
2. Documenter les fonctionnalités spécifiques à chaque shell
3. Expliquer pourquoi ces fonctionnalités existent
4. Donner des alternatives POSIX

Résultat attendu : Liste des fonctionnalités non-POSIX

Exercice 5 : Test de syntaxe non-POSIX
------------------------------------
Objectif : Tester la syntaxe non-POSIX et ses alternatives
Instructions :
1. Créer des scripts avec syntaxe non-POSIX
2. Convertir chaque script en syntaxe POSIX
3. Comparer la complexité et la lisibilité
4. Documenter les conversions

Résultat attendu : Paire de scripts (non-POSIX et POSIX)

Exercice 6 : Détection de bashisms
----------------------------------
Objectif : Utiliser des outils pour détecter les bashisms
Instructions :
1. Installer `checkbashisms` ou `shellcheck`
2. Analyser des scripts existants
3. Corriger les bashisms détectés
4. Valider la correction

Résultat attendu : Scripts corrigés et validés

Exercice 7 : Choix du shebang
-----------------------------
Objectif : Choisir le bon shebang pour la portabilité
Instructions :
1. Comparer les shebangs : `#!/bin/sh`, `#!/usr/bin/env sh`, `#!/bin/bash`
2. Expliquer les avantages et inconvénients de chaque
3. Choisir le shebang approprié selon le cas
4. Créer des exemples pour chaque cas

Résultat attendu : Guide de choix du shebang

Exercice 8 : Script multi-shell
------------------------------
Objectif : Créer un script compatible avec plusieurs shells
Instructions :
1. Créer un script détectant le shell actuel
2. Adapter le comportement selon le shell
3. Utiliser des fonctionnalités communes
4. Tester avec plusieurs shells

Résultat attendu : Script multi-shell fonctionnel

Défi final : shell_compatibility.sh
------------------------------------
Objectif : Créer un outil de test de compatibilité shell
Instructions :
1. Créer un script `shell_compatibility.sh` qui :
   - Teste un script donné avec plusieurs shells
   - Rapporte les incompatibilités
   - Suggère des corrections
   - Génère un rapport de compatibilité
2. Le script doit accepter le script à tester en argument
3. Tester avec les shells : sh, bash, dash, zsh, fish
4. Documenter le script

Résultat attendu : Script `shell_compatibility.sh` complet

================================================================================
LABO C : VARIABLES ET ENVIRONNEMENT
================================================================================

Exercice 1 : Variables locales vs globales
-----------------------------------------
Objectif : Comprendre la différence entre variables locales et globales
Instructions :
1. Créer une variable locale dans une fonction
2. Créer une variable globale
3. Tester l'accès depuis une fonction
4. Utiliser `local` (si disponible) ou convention POSIX
5. Documenter les différences

Résultat attendu : Script démontrant les portées de variables

Exercice 2 : Variables d'environnement
---------------------------------------
Objectif : Manipuler les variables d'environnement
Instructions :
1. Créer des variables d'environnement avec `export`
2. Les rendre persistantes dans `.bashrc` ou `.profile`
3. Lire des variables d'environnement dans un script
4. Supprimer des variables d'environnement
5. Créer un script de gestion

Résultat attendu : Script de gestion des variables d'environnement

Exercice 3 : Tableaux (si supporté)
-----------------------------------
Objectif : Utiliser les tableaux si le shell le supporte
Instructions :
1. Tester si le shell supporte les tableaux
2. Créer et manipuler des tableaux
3. Itérer sur les éléments d'un tableau
4. Pour POSIX : utiliser des listes délimitées
5. Créer des fonctions de manipulation

Résultat attendu : Fonctions de manipulation de tableaux/listes

Exercice 4 : Manipulation de chaînes
-----------------------------------
Objectif : Manipuler des chaînes de caractères
Instructions :
1. Extraire des sous-chaînes (POSIX : `${var:offset:length}`)
2. Remplacer des motifs (POSIX : `${var//pattern/replacement}`)
3. Calculer la longueur d'une chaîne (POSIX : `${#var}`)
4. Convertir en majuscules/minuscules (POSIX : `tr`)
5. Créer des fonctions utilitaires

Résultat attendu : Bibliothèque de fonctions de manipulation de chaînes

Exercice 5 : Expansion des variables
-----------------------------------
Objectif : Comprendre les différents types d'expansion
Instructions :
1. Tester l'expansion des variables (`$var`, `${var}`)
2. Tester l'expansion arithmétique (`$((expr))`)
3. Tester l'expansion de commandes (`$(cmd)`, `` `cmd` ``)
4. Tester l'expansion de chemins (`~`, `*`, `?`)
5. Créer un script démontrant chaque type

Résultat attendu : Script démontrant les expansions

Exercice 6 : Substitution de commandes
--------------------------------------
Objectif : Utiliser la substitution de commandes
Instructions :
1. Utiliser `$(command)` pour la substitution moderne
2. Utiliser `` `command` `` pour la substitution historique
3. Comparer les deux syntaxes
4. Gérer les erreurs de substitution
5. Créer un script utilisant la substitution

Résultat attendu : Script avec substitution de commandes

Exercice 7 : Substitution arithmétique
--------------------------------------
Objectif : Effectuer des opérations arithmétiques
Instructions :
1. Utiliser `$((expression))` pour l'arithmétique
2. Utiliser `expr` pour la compatibilité POSIX
3. Tester les opérateurs : +, -, *, /, %
4. Tester les comparaisons : ==, !=, <, >, <=, >=
5. Créer une calculatrice simple

Résultat attendu : Script calculatrice de base

Exercice 8 : Fichiers de configuration shell
-------------------------------------------
Objectif : Comprendre les fichiers de configuration shell
Instructions :
1. Identifier les fichiers : `.profile`, `.bashrc`, `.zshrc`, etc.
2. Comprendre quand chaque fichier est chargé
3. Créer un fichier de configuration personnalisé
4. Ajouter des alias et fonctions utiles
5. Tester le chargement de la configuration

Résultat attendu : Fichier de configuration personnalisé

Défi final : env_manager.sh
----------------------------
Objectif : Créer un gestionnaire d'environnement
Instructions :
1. Créer un script `env_manager.sh` qui permet :
   - Lister les variables d'environnement
   - Ajouter/modifier des variables
   - Supprimer des variables
   - Sauvegarder/charger des configurations
   - Exporter/importer des configurations
2. Le script doit être interactif ou accepter des arguments
3. Documenter chaque fonction
4. Ajouter une validation des entrées

Résultat attendu : Script `env_manager.sh` complet

================================================================================
LABO D : STRUCTURES DE CONTRÔLE
================================================================================

Exercice 1 : Condition if/then/else/fi
--------------------------------------
Objectif : Utiliser les structures conditionnelles
Instructions :
1. Créer un script avec une condition simple
2. Ajouter des clauses `else` et `elif`
3. Utiliser les opérateurs de test (`-eq`, `-ne`, `-lt`, etc.)
4. Tester les opérateurs de fichiers (`-f`, `-d`, `-r`, etc.)
5. Créer un script de validation

Résultat attendu : Script avec conditions complexes

Exercice 2 : Condition case/esac
---------------------------------
Objectif : Utiliser la structure case pour les choix multiples
Instructions :
1. Créer un script avec une structure case
2. Utiliser des motifs simples et complexes
3. Ajouter un cas par défaut (`*`)
4. Créer un menu interactif
5. Tester avec différentes entrées

Résultat attendu : Script menu interactif

Exercice 3 : Boucles for
-------------------------
Objectif : Utiliser les boucles for
Instructions :
1. Créer une boucle for sur une liste
2. Créer une boucle for sur une plage de nombres
3. Utiliser `seq` pour générer des plages
4. Itérer sur les fichiers d'un répertoire
5. Créer un script de traitement par lot

Résultat attendu : Script avec boucles for variées

Exercice 4 : Boucles while
---------------------------
Objectif : Utiliser les boucles while
Instructions :
1. Créer une boucle while avec condition
2. Utiliser une boucle while pour lire un fichier
3. Créer un compteur avec while
4. Gérer la sortie de boucle (`break`)
5. Créer un script de monitoring

Résultat attendu : Script avec boucles while

Exercice 5 : Boucles until
---------------------------
Objectif : Utiliser les boucles until
Instructions :
1. Créer une boucle until avec condition
2. Comparer while et until
3. Créer un script d'attente avec until
4. Tester les conditions de sortie
5. Documenter les cas d'utilisation

Résultat attendu : Script avec boucles until

Exercice 6 : Break et continue
------------------------------
Objectif : Contrôler le flux des boucles
Instructions :
1. Utiliser `break` pour sortir d'une boucle
2. Utiliser `continue` pour passer à l'itération suivante
3. Créer des boucles imbriquées avec break/continue
4. Créer un script de recherche avec break
5. Créer un script de filtrage avec continue

Résultat attendu : Script avec break et continue

Exercice 7 : Tests et opérateurs
--------------------------------
Objectif : Maîtriser les opérateurs de test
Instructions :
1. Utiliser `test` et `[ ]` pour les tests
2. Utiliser `[[ ]]` si disponible (non-POSIX)
3. Tester les opérateurs de fichiers
4. Tester les opérateurs de chaînes
5. Tester les opérateurs arithmétiques

Résultat attendu : Script de démonstration des tests

Exercice 8 : Logique booléenne
------------------------------
Objectif : Utiliser la logique booléenne
Instructions :
1. Utiliser les opérateurs : `-a` (AND), `-o` (OR), `!` (NOT)
2. Combiner plusieurs conditions
3. Utiliser les parenthèses pour grouper
4. Créer des expressions complexes
5. Créer un script de validation complexe

Résultat attendu : Script avec logique booléenne

Défi final : control_flow_demo.sh
-------------------------------
Objectif : Démontrer toutes les structures de contrôle
Instructions :
1. Créer un script `control_flow_demo.sh` qui :
   - Utilise if/then/else/elif/fi
   - Utilise case/esac
   - Utilise des boucles for, while, until
   - Utilise break et continue
   - Utilise des tests complexes
   - Utilise la logique booléenne
2. Le script doit être interactif ou accepter des arguments
3. Documenter chaque section
4. Ajouter des exemples d'utilisation

Résultat attendu : Script `control_flow_demo.sh` complet

================================================================================
LABO E : FONCTIONS
================================================================================

Exercice 1 : Définition de fonctions
-----------------------------------
Objectif : Définir et appeler des fonctions
Instructions :
1. Définir une fonction simple
2. Appeler la fonction
3. Passer des arguments à la fonction
4. Renvoyer une valeur de retour
5. Créer plusieurs fonctions utilitaires

Résultat attendu : Bibliothèque de fonctions de base

Exercice 2 : Arguments de fonctions
----------------------------------
Objectif : Passer et utiliser des arguments de fonctions
Instructions :
1. Accéder aux arguments : `$1`, `$2`, etc.
2. Utiliser `$#` pour le nombre d'arguments
3. Utiliser `$@` et `$*` pour tous les arguments
4. Utiliser des valeurs par défaut
5. Valider les arguments

Résultat attendu : Fonctions avec gestion d'arguments

Exercice 3 : Valeurs de retour
------------------------------
Objectif : Renvoyer des valeurs depuis les fonctions
Instructions :
1. Utiliser `return` pour les codes de sortie
2. Utiliser `echo` pour retourner des valeurs
3. Capturer la sortie avec `$(func)`
4. Gérer les codes de retour
5. Créer des fonctions avec retour complexe

Résultat attendu : Fonctions avec valeurs de retour

Exercice 4 : Variables locales
-------------------------------
Objectif : Utiliser des variables locales dans les fonctions
Instructions :
1. Utiliser `local` si disponible (non-POSIX)
2. Utiliser une convention de nommage POSIX (`__var`)
3. Tester la portée des variables
4. Documenter les limitations POSIX
5. Créer des fonctions avec variables locales

Résultat attendu : Fonctions avec variables locales POSIX

Exercice 5 : Portée des variables
--------------------------------
Objectif : Comprendre la portée des variables
Instructions :
1. Créer des variables globales et locales
2. Tester l'accès depuis différentes fonctions
3. Documenter les règles de portée
4. Créer un script démontrant la portée
5. Expliquer les pièges courants

Résultat attendu : Script démontrant la portée des variables

Exercice 6 : Récursivité
-------------------------
Objectif : Créer des fonctions récursives
Instructions :
1. Créer une fonction récursive simple (factorielle)
2. Créer une fonction récursive avec arbre (répertoires)
3. Gérer le cas de base
4. Limiter la profondeur de récursion
5. Créer un script de traitement récursif

Résultat attendu : Fonctions récursives fonctionnelles

Exercice 7 : Bibliothèques de fonctions
--------------------------------------
Objectif : Créer et utiliser des bibliothèques de fonctions
Instructions :
1. Créer un fichier de bibliothèque avec des fonctions
2. Sourcer la bibliothèque avec `.`
3. Utiliser les fonctions de la bibliothèque
4. Créer plusieurs bibliothèques thématiques
5. Documenter les fonctions

Résultat attendu : Bibliothèques de fonctions réutilisables

Exercice 8 : Fonctions avancées
-------------------------------
Objectif : Utiliser des fonctionnalités avancées de fonctions
Instructions :
1. Passer des fonctions comme arguments (via `eval`)
2. Créer des fonctions d'ordre supérieur
3. Utiliser des callbacks
4. Créer des fonctions de composition
5. Créer des fonctions map/filter/reduce

Résultat attendu : Fonctions avancées fonctionnelles

Défi final : function_library.sh
-------------------------------
Objectif : Créer une bibliothèque de fonctions complète
Instructions :
1. Créer un script `function_library.sh` avec :
   - Fonctions mathématiques (add, sub, mul, div, mod)
   - Fonctions de chaînes (length, upper, lower, trim, reverse)
   - Fonctions de fichiers (exists, isdir, readable, writable)
   - Fonctions de chemins (basename, dirname, ext)
   - Fonctions avancées (map, filter, reduce)
   - Fonctions de logging (info, warn, error, debug)
2. Le script doit être POSIX-compatible
3. Documenter chaque fonction avec des commentaires
4. Ajouter des exemples d'utilisation

Résultat attendu : Script `function_library.sh` complet

================================================================================
LABO F : PROCESSUS ET SIGNAUX
================================================================================

Exercice 1 : Lancement de processus
----------------------------------
Objectif : Lancer et gérer des processus
Instructions :
1. Lancer un processus en avant-plan
2. Lancer un processus en arrière-plan (`&`)
3. Lister les processus avec `ps`
4. Tuer un processus avec `kill`
5. Créer un script de gestion de processus

Résultat attendu : Script de gestion de processus

Exercice 2 : Processus en arrière-plan
--------------------------------------
Objectif : Gérer les processus en arrière-plan
Instructions :
1. Lancer un processus en arrière-plan
2. Ramener un processus en avant-plan (`fg`)
3. Mettre un processus en arrière-plan (`bg`)
4. Lister les jobs avec `jobs`
5. Créer un script de gestion de jobs

Résultat attendu : Script de gestion de jobs

Exercice 3 : Gestion des jobs
-----------------------------
Objectif : Gérer plusieurs jobs simultanés
Instructions :
1. Lancer plusieurs processus
2. Gérer les jobs avec `jobs`, `fg`, `bg`
3. Utiliser `wait` pour attendre la fin
4. Gérer les codes de retour
5. Créer un script de parallélisation simple

Résultat attendu : Script de gestion de jobs multiples

Exercice 4 : Signaux (SIGTERM, SIGINT, etc.)
-------------------------------------------
Objectif : Comprendre et gérer les signaux
Instructions :
1. Envoyer des signaux avec `kill`
2. Tester SIGTERM, SIGINT, SIGKILL
3. Comprendre la différence entre les signaux
4. Créer un script qui gère les signaux
5. Documenter les signaux courants

Résultat attendu : Script de gestion des signaux

Exercice 5 : Traps
------------------
Objectif : Utiliser des traps pour capturer des signaux
Instructions :
1. Utiliser `trap` pour capturer SIGINT
2. Créer un nettoyage à la sortie
3. Gérer plusieurs signaux avec trap
4. Créer un script robuste avec traps
5. Tester la gestion des signaux

Résultat attendu : Script avec traps fonctionnels

Exercice 6 : Communication inter-processus
-------------------------------------------
Objectif : Communiquer entre processus
Instructions :
1. Utiliser des pipes nommés (`mkfifo`)
2. Utiliser des fichiers temporaires
3. Utiliser des signaux pour la communication
4. Créer un producteur-consommateur
5. Créer un script de communication IPC

Résultat attendu : Script de communication IPC

Exercice 7 : Monitoring de processus
-----------------------------------
Objectif : Surveiller les processus système
Instructions :
1. Utiliser `top` ou `htop` pour le monitoring
2. Utiliser `ps` avec des filtres
3. Créer un script de monitoring personnalisé
4. Surveiller l'utilisation CPU/mémoire
5. Créer des alertes

Résultat attendu : Script de monitoring de processus

Exercice 8 : Gestion des ressources
----------------------------------
Objectif : Gérer les ressources système
Instructions :
1. Surveiller l'utilisation CPU avec `top`
2. Surveiller l'utilisation mémoire avec `free`
3. Surveiller l'utilisation disque avec `df`
4. Créer un script de rapport de ressources
5. Créer des alertes de ressources

Résultat attendu : Script de gestion des ressources

Défi final : process_manager.sh
-------------------------------
Objectif : Créer un gestionnaire de processus complet
Instructions :
1. Créer un script `process_manager.sh` qui permet :
   - Lancer des processus
   - Lister les processus
   - Tuer des processus
   - Surveiller les ressources
   - Gérer les jobs
   - Gérer les signaux
2. Le script doit être interactif
3. Documenter chaque fonction
4. Ajouter une validation des entrées

Résultat attendu : Script `process_manager.sh` complet

================================================================================
LABO G : SHELL ET RÉSEAU
================================================================================

Exercice 1 : Commandes réseau de base
------------------------------------
Objectif : Utiliser les commandes réseau de base
Instructions :
1. Utiliser `ifconfig` ou `ip` pour voir les interfaces
2. Utiliser `netstat` pour les connexions
3. Utiliser `ss` comme alternative à `netstat`
4. Créer un script d'information réseau
5. Documenter les commandes

Résultat attendu : Script d'information réseau

Exercice 2 : ping et traceroute
------------------------------
Objectif : Tester la connectivité réseau
Instructions :
1. Utiliser `ping` pour tester la connectivité
2. Utiliser `traceroute` pour tracer la route
3. Analyser les résultats
4. Créer un script de diagnostic réseau
5. Interpréter les résultats

Résultat attendu : Script de diagnostic réseau

Exercice 3 : SSH et authentification
------------------------------------
Objectif : Utiliser SSH pour la connexion distante
Instructions :
1. Se connecter avec `ssh`
2. Configurer l'authentification par clés
3. Utiliser `ssh-keygen` pour générer des clés
4. Utiliser `ssh-copy-id` pour copier les clés
5. Créer un script d'automatisation SSH

Résultat attendu : Script d'automatisation SSH

Exercice 4 : Transfert de fichiers (scp, rsync)
---------------------------------------------
Objectif : Transférer des fichiers sur le réseau
Instructions :
1. Utiliser `scp` pour copier des fichiers
2. Utiliser `rsync` pour synchroniser des répertoires
3. Comparer `scp` et `rsync`
4. Créer un script de sauvegarde réseau
5. Gérer les erreurs de transfert

Résultat attendu : Script de sauvegarde réseau

Exercice 5 : curl et wget
-------------------------
Objectif : Télécharger des fichiers depuis le web
Instructions :
1. Utiliser `curl` pour télécharger des fichiers
2. Utiliser `wget` pour télécharger des fichiers
3. Comparer `curl` et `wget`
4. Créer un script de téléchargement
5. Gérer les erreurs HTTP

Résultat attendu : Script de téléchargement

Exercice 6 : netcat et sockets
------------------------------
Objectif : Utiliser netcat pour les communications réseau
Instructions :
1. Utiliser `nc` (netcat) pour les connexions TCP/UDP
2. Créer un serveur simple avec netcat
3. Créer un client simple avec netcat
4. Tester la communication
5. Créer un script de chat simple

Résultat attendu : Script de chat avec netcat

Exercice 7 : Configuration réseau
--------------------------------
Objectif : Configurer les paramètres réseau
Instructions :
1. Configurer une adresse IP
2. Configurer le masque de sous-réseau
3. Configurer la passerelle
4. Configurer le DNS
5. Créer un script de configuration réseau

Résultat attendu : Script de configuration réseau

Exercice 8 : Sécurité réseau
----------------------------
Objectif : Sécuriser les communications réseau
Instructions :
1. Utiliser SSH avec chiffrement
2. Configurer le firewall (iptables/ufw)
3. Scanner les ports ouverts
4. Créer un script de sécurité réseau
5. Documenter les bonnes pratiques

Résultat attendu : Script de sécurité réseau

Défi final : network_tool.sh
----------------------------
Objectif : Créer une boîte à outils réseau complète
Instructions :
1. Créer un script `network_tool.sh` qui permet :
   - Diagnostiquer la connectivité
   - Transférer des fichiers
   - Télécharger des fichiers
   - Scanner les ports
   - Configurer le réseau
   - Sécuriser les communications
2. Le script doit être interactif
3. Documenter chaque fonction
4. Ajouter une validation des entrées

Résultat attendu : Script `network_tool.sh` complet

================================================================================
LABO H : TEXT PROCESSING
================================================================================

Exercice 1 : grep et patterns
----------------------------
Objectif : Utiliser grep pour rechercher des motifs
Instructions :
1. Utiliser `grep` pour rechercher des motifs simples
2. Utiliser des expressions régulières avec grep
3. Utiliser les options : `-i`, `-v`, `-r`, `-n`
4. Rechercher dans plusieurs fichiers
5. Créer un script de recherche avancée

Résultat attendu : Script de recherche avancée

Exercice 2 : sed et transformations
----------------------------------
Objectif : Utiliser sed pour transformer du texte
Instructions :
1. Utiliser `sed` pour remplacer des motifs
2. Utiliser `sed` pour supprimer des lignes
3. Utiliser `sed` pour insérer des lignes
4. Créer des scripts sed complexes
5. Créer un script de transformation

Résultat attendu : Script de transformation de texte

Exercice 3 : awk et traitement de données
-----------------------------------------
Objectif : Utiliser awk pour traiter des données structurées
Instructions :
1. Utiliser `awk` pour traiter des fichiers CSV
2. Utiliser `awk` pour calculer des sommes
3. Utiliser `awk` pour filtrer des données
4. Créer des scripts awk complexes
5. Créer un script d'analyse de données

Résultat attendu : Script d'analyse de données

Exercice 4 : cut et tr
-----------------------
Objectif : Utiliser cut et tr pour manipuler du texte
Instructions :
1. Utiliser `cut` pour extraire des colonnes
2. Utiliser `tr` pour transformer des caractères
3. Combiner cut et tr
4. Créer un script de manipulation de colonnes
5. Créer un script de transformation de caractères

Résultat attendu : Script de manipulation de texte

Exercice 5 : sort et uniq
-------------------------
Objectif : Trier et dédupliquer des données
Instructions :
1. Utiliser `sort` pour trier des lignes
2. Utiliser `uniq` pour dédupliquer
3. Combiner sort et uniq
4. Trier numériquement avec `-n`
5. Créer un script de tri et déduplication

Résultat attendu : Script de tri et déduplication

Exercice 6 : head et tail
-------------------------
Objectif : Extraire le début ou la fin d'un fichier
Instructions :
1. Utiliser `head` pour extraire les premières lignes
2. Utiliser `tail` pour extraire les dernières lignes
3. Utiliser `tail -f` pour suivre un fichier
4. Créer un script d'extraction
5. Créer un script de monitoring de fichier

Résultat attendu : Script d'extraction de lignes

Exercice 7 : wc et compte
--------------------------
Objectif : Compter les lignes, mots et caractères
Instructions :
1. Utiliser `wc` pour compter les lignes
2. Utiliser `wc` pour compter les mots
3. Utiliser `wc` pour compter les caractères
4. Combiner wc avec d'autres commandes
5. Créer un script de statistiques de fichier

Résultat attendu : Script de statistiques

Exercice 8 : Combinaison de commandes
-------------------------------------
Objectif : Combiner plusieurs commandes de traitement de texte
Instructions :
1. Utiliser des pipes (`|`) pour combiner les commandes
2. Créer des pipelines complexes
3. Utiliser la redirection (`>`, `>>`, `<`)
4. Créer un script de traitement complet
5. Optimiser les pipelines

Résultat attendu : Script de traitement complet

Défi final : text_processor.sh
------------------------------
Objectif : Créer un processeur de texte complet
Instructions :
1. Créer un script `text_processor.sh` qui permet :
   - Rechercher des motifs
   - Transformer du texte
   - Analyser des données
   - Trier et dédupliquer
   - Extraire des parties de fichier
   - Compter et statistiques
2. Le script doit accepter des arguments
3. Documenter chaque fonction
4. Ajouter des exemples d'utilisation

Résultat attendu : Script `text_processor.sh` complet

================================================================================
LABO I : SCRIPTING AVANCÉ
================================================================================

Exercice 1 : Gestion des erreurs
--------------------------------
Objectif : Gérer les erreurs dans les scripts
Instructions :
1. Utiliser `set -e` pour arrêter en cas d'erreur
2. Utiliser `set -u` pour détecter les variables non définies
3. Utiliser `set -o pipefail` pour les erreurs dans les pipes
4. Capturer les codes de retour
5. Créer un script avec gestion d'erreurs robuste

Résultat attendu : Script avec gestion d'erreurs

Exercice 2 : Debugging
-----------------------
Objectif : Déboguer des scripts shell
Instructions :
1. Utiliser `set -x` pour le mode trace
2. Utiliser `echo` pour le débogage
3. Utiliser `bash -x` pour exécuter en mode debug
4. Créer des fonctions de logging
5. Créer un script avec support de debug

Résultat attendu : Script avec support de debug

Exercice 3 : Logging
-------------------
Objectif : Implémenter un système de logging
Instructions :
1. Créer des fonctions de logging (info, warn, error, debug)
2. Formater les messages de log
3. Écrire les logs dans un fichier
4. Ajouter des timestamps aux logs
5. Créer un système de rotation de logs

Résultat attendu : Système de logging complet

Exercice 4 : Parsing d'arguments
-------------------------------
Objectif : Parser les arguments de ligne de commande
Instructions :
1. Parser les arguments positionnels
2. Parser les options avec `getopts`
3. Gérer les arguments longs (si supporté)
4. Valider les arguments
5. Créer une aide (`--help`)

Résultat attendu : Script avec parsing d'arguments

Exercice 5 : Fichiers temporaires
--------------------------------
Objectif : Gérer les fichiers temporaires
Instructions :
1. Utiliser `mktemp` pour créer des fichiers temporaires
2. Utiliser `/tmp` pour les fichiers temporaires
3. Nettoyer les fichiers temporaires à la sortie
4. Utiliser des traps pour le nettoyage
5. Créer un script avec gestion de fichiers temporaires

Résultat attendu : Script avec gestion de fichiers temporaires

Exercice 6 : Parallélisation
-----------------------------
Objectif : Exécuter des tâches en parallèle
Instructions :
1. Utiliser `&` pour lancer des processus en parallèle
2. Utiliser `wait` pour attendre la fin
3. Utiliser `xargs -P` pour la parallélisation
4. Gérer les ressources en parallèle
5. Créer un script de parallélisation

Résultat attendu : Script de parallélisation

Exercice 7 : Optimisation
-------------------------
Objectif : Optimiser les scripts shell
Instructions :
1. Éviter les sous-shells inutiles
2. Utiliser des builtins au lieu de commandes externes
3. Optimiser les boucles
4. Utiliser `time` pour mesurer les performances
5. Créer un script optimisé

Résultat attendu : Script optimisé

Exercice 8 : Bonnes pratiques
-----------------------------
Objectif : Suivre les bonnes pratiques de scripting
Instructions :
1. Documenter les scripts avec des commentaires
2. Utiliser des noms de variables explicites
3. Utiliser des guillemets pour les variables
4. Valider les entrées
5. Créer un script suivant les bonnes pratiques

Résultat attendu : Script suivant les bonnes pratiques

Défi final : advanced_script.sh
-------------------------------
Objectif : Créer un script avancé complet
Instructions :
1. Créer un script `advanced_script.sh` qui :
   - Gère les erreurs
   - Supporte le debug
   - Implémente le logging
   - Parse les arguments
   - Gère les fichiers temporaires
   - Utilise la parallélisation
   - Est optimisé
   - Suit les bonnes pratiques
2. Le script doit effectuer une tâche complexe
3. Documenter chaque fonction
4. Ajouter des tests

Résultat attendu : Script `advanced_script.sh` complet

================================================================================
LABO J : SÉCURITÉ
================================================================================

Exercice 1 : Permissions et umask
---------------------------------
Objectif : Comprendre et gérer les permissions
Instructions :
1. Utiliser `chmod` pour modifier les permissions
2. Utiliser `umask` pour définir les permissions par défaut
3. Comprendre les permissions rwx
4. Utiliser `chown` pour changer le propriétaire
5. Créer un script de gestion des permissions

Résultat attendu : Script de gestion des permissions

Exercice 2 : Validation des entrées
----------------------------------
Objectif : Valider les entrées utilisateur
Instructions :
1. Valider les types de données
2. Valider les plages de valeurs
3. Valider les formats (email, URL, etc.)
4. Nettoyer les entrées
5. Créer un script de validation

Résultat attendu : Script de validation des entrées

Exercice 3 : Sanitization
--------------------------
Objectif : Nettoyer les entrées pour éviter les injections
Instructions :
1. Échapper les caractères spéciaux
2. Nettoyer les chemins de fichiers
3. Nettoyer les commandes shell
4. Utiliser des fonctions de sanitization
5. Créer un script de sanitization

Résultat attendu : Script de sanitization

Exercice 4 : Shell injection
----------------------------
Objectif : Comprendre et prévenir les injections shell
Instructions :
1. Identifier les vulnérabilités d'injection
2. Utiliser des guillemets pour prévenir les injections
3. Valider les entrées avant utilisation
4. Utiliser `eval` avec précaution
5. Créer un script sécurisé

Résultat attendu : Script sécurisé contre les injections

Exercice 5 : Variables sensibles
--------------------------------
Objectif : Protéger les variables sensibles
Instructions :
1. Ne pas stocker de mots de passe en clair
2. Utiliser des fichiers de configuration protégés
3. Utiliser des variables d'environnement
4. Limiter l'accès aux scripts
5. Créer un script de gestion des secrets

Résultat attendu : Script de gestion des secrets

Exercice 6 : Sudo et privilèges
-------------------------------
Objectif : Gérer les privilèges avec sudo
Instructions :
1. Utiliser `sudo` pour les commandes privilégiées
2. Configurer sudoers
3. Limiter l'utilisation de sudo
4. Valider les privilèges
5. Créer un script avec gestion de privilèges

Résultat attendu : Script avec gestion de privilèges

Exercice 7 : Audit de scripts
-----------------------------
Objectif : Auditer les scripts pour la sécurité
Instructions :
1. Utiliser `shellcheck` pour analyser les scripts
2. Rechercher les vulnérabilités courantes
3. Vérifier les permissions des fichiers
4. Auditer les logs
5. Créer un script d'audit

Résultat attendu : Script d'audit de sécurité

Exercice 8 : Hardening
-----------------------
Objectif : Renforcer la sécurité des scripts
Instructions :
1. Appliquer les principes de moindre privilège
2. Utiliser des chemins absolus
3. Valider toutes les entrées
4. Logger les actions sensibles
5. Créer un script hardened

Résultat attendu : Script hardened

Défi final : secure_script.sh
-----------------------------
Objectif : Créer un script sécurisé complet
Instructions :
1. Créer un script `secure_script.sh` qui :
   - Gère les permissions correctement
   - Valide toutes les entrées
   - Sanitize les données
   - Prévient les injections
   - Protège les variables sensibles
   - Gère les privilèges
   - Est auditable
   - Est hardened
2. Le script doit effectuer une tâche sensible
3. Documenter chaque mesure de sécurité
4. Ajouter des tests de sécurité

Résultat attendu : Script `secure_script.sh` sécurisé

================================================================================
LABOS MIXTES (REGROUPEMENTS)
================================================================================

================================================================================
LABO AB : INTRODUCTION + TYPES DE SHELLS
================================================================================

Objectif global : Combiner les fondamentaux du shell avec la compréhension des types
et de la compatibilité POSIX.

Exercice 1 : Shell complet
---------------------------
Objectif : Créer un script d'information complet sur les shells
Instructions :
1. Combiner les exercices du Labo A et Labo B
2. Identifier le shell actuel et sa compatibilité POSIX
3. Tester le script avec plusieurs shells
4. Générer un rapport de compatibilité
5. Documenter les différences entre shells

Résultat attendu : Script `shell_complete_info.sh` avec test de compatibilité

Exercice 2 : Script multi-shell portable
----------------------------------------
Objectif : Créer un script portable compatible avec plusieurs shells
Instructions :
1. Écrire un script en utilisant uniquement POSIX
2. Tester avec sh, bash, dash, zsh
3. Adapter le script pour les fonctionnalités spécifiques
4. Documenter les adaptations nécessaires
5. Créer un guide de portabilité

Résultat attendu : Script portable avec documentation

Exercice 3 : Comparaison de shells
----------------------------------
Objectif : Comparer en détail différents shells
Instructions :
1. Créer une matrice de comparaison
2. Tester des fonctionnalités spécifiques à chaque shell
3. Identifier les avantages et inconvénients
4. Créer des recommandations d'utilisation
5. Documenter les cas d'utilisation

Résultat attendu : Matrice de comparaison et recommandations

Défi final : ab_shell_master.sh
--------------------------------
Objectif : Créer un maître de shells complet
Instructions :
1. Créer un script `ab_shell_master.sh` qui :
   - Identifie et analyse tous les shells installés
   - Teste la compatibilité POSIX de chaque shell
   - Compare les fonctionnalités
   - Génère des rapports détaillés
   - Recommande le shell approprié selon le cas
2. Le script doit être interactif
3. Documenter chaque fonction
4. Ajouter des tests automatiques

Résultat attendu : Script `ab_shell_master.sh` complet

================================================================================
LABO CD : VARIABLES + STRUCTURES DE CONTRÔLE
================================================================================

Objectif global : Maîtriser la manipulation de variables et les structures de
contrôle pour créer des scripts complexes.

Exercice 1 : Script de configuration dynamique
-----------------------------------------------
Objectif : Créer un script de configuration avec variables et conditions
Instructions :
1. Utiliser des variables pour stocker la configuration
2. Utiliser des structures de contrôle pour valider
3. Créer un fichier de configuration
4. Parser et appliquer la configuration
5. Gérer les erreurs de configuration

Résultat attendu : Script de configuration dynamique

Exercice 2 : Calculatrice avancée
---------------------------------
Objectif : Créer une calculatrice avec variables et structures de contrôle
Instructions :
1. Utiliser des variables pour stocker les opérandes
2. Utiliser des structures de contrôle pour les opérations
3. Gérer les erreurs (division par zéro, etc.)
4. Supporter plusieurs opérations
5. Créer une interface interactive

Résultat attendu : Calculatrice interactive robuste

Exercice 3 : Gestionnaire de tâches
-----------------------------------
Objectif : Créer un gestionnaire de tâches avec variables et boucles
Instructions :
1. Utiliser des variables pour stocker les tâches
2. Utiliser des boucles pour parcourir les tâches
3. Utiliser des conditions pour filtrer
4. Créer des opérations CRUD
5. Sauvegarder/charger les tâches

Résultat attendu : Gestionnaire de tâches complet

Défi final : cd_logic_processor.sh
----------------------------------
Objectif : Créer un processeur de logique complet
Instructions :
1. Créer un script `cd_logic_processor.sh` qui :
   - Manipule des variables complexes
   - Utilise toutes les structures de contrôle
   - Effectue des calculs arithmétiques
   - Gère des configurations
   - Traite des données structurées
2. Le script doit accepter des fichiers d'entrée
3. Documenter chaque fonction
4. Ajouter des tests unitaires

Résultat attendu : Script `cd_logic_processor.sh` complet

================================================================================
LABO EF : FONCTIONS + PROCESSUS
================================================================================

Objectif global : Combiner la modularité des fonctions avec la gestion des
processus pour créer des scripts puissants et efficaces.

Exercice 1 : Bibliothèque de gestion de processus
--------------------------------------------------
Objectif : Créer des fonctions pour gérer les processus
Instructions :
1. Créer des fonctions pour lancer des processus
2. Créer des fonctions pour surveiller les processus
3. Créer des fonctions pour tuer des processus
4. Créer des fonctions pour gérer les jobs
5. Documenter chaque fonction

Résultat attendu : Bibliothèque de fonctions de gestion de processus

Exercice 2 : Orchestrateur de processus
---------------------------------------
Objectif : Créer un orchestrateur avec fonctions et processus
Instructions :
1. Utiliser des fonctions pour orchestrer des processus
2. Lancer plusieurs processus en parallèle
3. Gérer les dépendances entre processus
4. Gérer les erreurs et retries
5. Créer un système de monitoring

Résultat attendu : Orchestrateur de processus fonctionnel

Exercice 3 : Système de monitoring distribué
-------------------------------------------
Objectif : Créer un système de monitoring avec fonctions et processus
Instructions :
1. Créer des fonctions de collecte de métriques
2. Lancer des agents de monitoring
3. Centraliser les données
4. Créer des alertes
5. Visualiser les données

Résultat attendu : Système de monitoring distribué

Défi final : ef_process_orchestrator.sh
---------------------------------------
Objectif : Créer un orchestrateur de processus complet
Instructions :
1. Créer un script `ef_process_orchestrator.sh` qui :
   - Utilise une bibliothèque de fonctions
   - Orchestre des processus complexes
   - Gère le parallélisme
   - Surveille les ressources
   - Gère les erreurs et retries
2. Le script doit accepter un fichier de configuration
3. Documenter chaque fonction
4. Ajouter des tests d'intégration

Résultat attendu : Script `ef_process_orchestrator.sh` complet

================================================================================
LABO GH : RÉSEAU + TEXT PROCESSING
================================================================================

Objectif global : Combiner les opérations réseau avec le traitement de texte
pour créer des outils d'analyse et d'automatisation réseau.

Exercice 1 : Analyseur de logs réseau
-------------------------------------
Objectif : Créer un outil d'analyse de logs avec traitement de texte
Instructions :
1. Télécharger ou lire des logs réseau
2. Utiliser grep pour filtrer les erreurs
3. Utiliser awk pour analyser les patterns
4. Utiliser sed pour transformer les données
5. Générer un rapport

Résultat attendu : Analyseur de logs réseau fonctionnel

Exercice 2 : Scraper web
-------------------------
Objectif : Créer un scraper web avec traitement de texte
Instructions :
1. Utiliser curl pour télécharger des pages
2. Utiliser grep pour extraire des liens
3. Utiliser sed pour nettoyer les données
4. Utiliser awk pour structurer les données
5. Sauvegarder les résultats

Résultat attendu : Scraper web fonctionnel

Exercice 3 : Analyseur de trafic réseau
----------------------------------------
Objectif : Créer un analyseur de trafic avec traitement de texte
Instructions :
1. Capturer le trafic réseau (tcpdump/netcat)
2. Utiliser awk pour analyser les paquets
3. Utiliser sort pour trier les données
4. Utiliser uniq pour dédupliquer
5. Générer des statistiques

Résultat attendu : Analyseur de trafic fonctionnel

Défi final : gh_network_analyzer.sh
------------------------------------
Objectif : Créer un analyseur réseau complet
Instructions :
1. Créer un script `gh_network_analyzer.sh` qui :
   - Analyse les logs réseau
   - Scrape des données web
   - Analyse le trafic réseau
   - Génère des rapports détaillés
   - Visualise les données
2. Le script doit accepter différentes sources de données
3. Documenter chaque fonction
4. Ajouter des tests de validation

Résultat attendu : Script `gh_network_analyzer.sh` complet

================================================================================
LABO IJ : SCRIPTING AVANCÉ + SÉCURITÉ
================================================================================

Objectif global : Combiner les techniques avancées de scripting avec les
meilleures pratiques de sécurité pour créer des scripts robustes et sécurisés.

Exercice 1 : Script sécurisé avec logging
-----------------------------------------
Objectif : Créer un script sécurisé avec système de logging
Instructions :
1. Implémenter un système de logging sécurisé
2. Valider toutes les entrées
3. Gérer les erreurs proprement
4. Sanitiser les données
5. Logger les actions sensibles

Résultat attendu : Script sécurisé avec logging

Exercice 2 : Script d'audit de sécurité
----------------------------------------
Objectif : Créer un script d'audit avec techniques avancées
Instructions :
1. Scanner les fichiers pour les vulnérabilités
2. Analyser les permissions
3. Vérifier la configuration système
4. Générer un rapport d'audit
5. Proposer des corrections

Résultat attendu : Script d'audit de sécurité

Exercice 3 : Script de déploiement sécurisé
-------------------------------------------
Objectif : Créer un script de déploiement avec sécurité
Instructions :
1. Valider l'environnement de déploiement
2. Gérer les secrets de manière sécurisée
3. Effectuer le déploiement avec rollback
4. Logger toutes les actions
5. Valider le déploiement

Résultat attendu : Script de déploiement sécurisé

Défi final : ij_secure_deployer.sh
-----------------------------------
Objectif : Créer un déploieur sécurisé complet
Instructions :
1. Créer un script `ij_secure_deployer.sh` qui :
   - Effectue un audit pré-déploiement
   - Valide l'environnement
   - Gère les secrets
   - Effectue le déploiement atomique
   - Gère les rollbacks
   - Log toutes les actions
2. Le script doit accepter un manifeste de déploiement
3. Documenter chaque fonction
4. Ajouter des tests de sécurité

Résultat attendu : Script `ij_secure_deployer.sh` complet

================================================================================
LABO ABCD : FONDAMENTAUX + PROGRAMMATION
================================================================================

Objectif global : Maîtriser les fondamentaux du shell et la programmation
pour créer des scripts complexes et robustes.

Exercice 1 : Script de configuration système
--------------------------------------------
Objectif : Créer un script de configuration avec tous les fondamentaux
Instructions :
1. Utiliser les variables pour la configuration
2. Utiliser les structures de contrôle pour la logique
3. Utiliser les fonctions pour la modularité
4. Valider la configuration
5. Appliquer la configuration

Résultat attendu : Script de configuration système complet

Exercice 2 : Script de sauvegarde
----------------------------------
Objectif : Créer uns script de sauvegarde avec programmation avancée
Instructions :
1. Utiliser les variables pour les options
2. Utiliser les boucles pour traiter les fichiers
3. Utiliser les fonctions pour les opérations
4. Gérer les erreurs
5. Logger les actions

Résultat attendu : Script de sauvegarde robuste

Exercice 3 : Script de monitoring système
-------------------------------------------
Objectif : Créer un script de monitoring avec programmation
Instructions :
1. Collecter les métriques système
2. Utiliser les structures de contrôle pour l'analyse
3. Utiliser les fonctions pour la modularité
4. Générer des alertes
5. Sauvegarder les données

Résultat attendu : Script de monitoring système

Défi final : abcd_system_manager.sh
------------------------------------
Objectif : Créer un gestionnaire système complet
Instructions :
1. Créer un script `abcd_system_manager.sh` qui :
   - Configure le système
   - Effectue des sauvegardes
   - Monitore le système
   - Gère les erreurs
   - Log toutes les actions
2. Le script doit être modulaire et extensible
3. Documenter chaque fonction
4. Ajouter des tests d'intégration

Résultat attendu : Script `abcd_system_manager.sh` complet

================================================================================
LABO EFGH : FONCTIONS + PROCESSUS + RÉSEAU + TEXT
================================================================================

Objectif global : Combiner toutes les fonctionnalités avancées pour créer
des scripts complexes d'automatisation.

Exercice 1 : Pipeline de traitement de données
-----------------------------------------------
Objectif : Créer un pipeline avec fonctions, processus, réseau et texte
Instructions :
1. Créer des fonctions pour chaque étape
2. Lancer des processus en parallèle
3. Télécharger des données depuis le réseau
4. Traiter les données avec des outils texte
5. Sauvegarder les résultats

Résultat attendu : Pipeline de traitement fonctionnel

Exercice 2 : Système de surveillance distribué
-----------------------------------------------
Objectif : Créer un système de surveillance avec toutes les fonctionnalités
Instructions :
1. Créer des agents de surveillance
2. Utiliser le réseau pour la communication
3. Traiter les logs avec des outils texte
4. Générer des alertes
5. Centraliser les données

Résultat attendu : Système de surveillance distribué

Exercice 3 : Orchestrateur de déploiement
------------------------------------------
Objectif : Créer un orchestrateur de déploiement complet
Instructions :
1. Utiliser des fonctions pour la modularité
2. Lancer des processus en parallèle
3. Utiliser le réseau pour le déploiement
4. Traiter les logs de déploiement
5. Gérer les rollbacks

Résultat attendu : Orchestrateur de déploiement fonctionnel

Défi final : efgh_automation_suite.sh
------------------------------------------------
Objectif : Créer une suite d'automatisation complète
Instructions :
1. Créer un script `efgh_automation_suite.sh` qui :
   - Utilise des fonctions modulaires
   - Orchestre des processus complexes
   - Communique via le réseau
   - Traite des données texte
   - Gère les erreurs et logging
2. Le script doit accepter des workflows
3. Documenter chaque fonction
4. Ajouter des tests end-to-end

Résultat attendu : Script `efgh_automation_suite.sh` complet

================================================================================
LABO ABCDEFGH : SHELL COMPLET (PARTIE 1)
================================================================================

Objectif global : Maîtriser tous les aspects du shell (partie 1) pour créer
des scripts professionnels.

Exercice 1 : Framework de scripting
------------------------------------
Objectif : Créer un framework de scripting complet
Instructions :
1. Créer des bibliothèques de fonctions
2. Implémenter un système de logging
3. Implémenter la gestion d'erreurs
4. Implémenter le parsing d'arguments
5. Documenter le framework

Résultat attendu : Framework de scripting réutilisable

Exercice 2 : Application complète
---------------------------------
Objectif : Créer une application complète avec le framework
Instructions :
1. Utiliser le framework créé
2. Implémenter une fonctionnalité complexe
3. Gérer la configuration
4. Gérer les erreurs
5. Logger les actions

Résultat attendu : Application complète fonctionnelle

Exercice 3 : Suite de tests
---------------------------
Objectif : Créer une suite de tests pour le framework
Instructions :
1. Créer des tests unitaires
2. Créer des tests d'intégration
3. Créer des tests end-to-end
4. Générer des rapports de tests
5. Automatiser les tests

Résultat attendu : Suite de tests automatisée

Défi final : abcdefgh_shell_framework.sh
-----------------------------------------
Objectif : Créer un framework de shell professionnel
Instructions :
1. Créer un script `abcdefgh_shell_framework.sh` qui :
   - Fournit un framework de scripting complet
   - Inclut des bibliothèques de fonctions
   - Implémente le logging et la gestion d'erreurs
   - Supporte le parsing d'arguments
   - Inclut une suite de tests
2. Le framework doit être réutilisable
3. Documenter chaque composant
4. Ajouter des exemples d'utilisation

Résultat attendu : Framework `abcdefgh_shell_framework.sh` professionnel

================================================================================
LABO GLOBAL : SHELL COMPLET
================================================================================

Objectif global : Intégrer tous les concepts du shell pour créer un projet
complet et professionnel.

Exercice 1 : Projet complet - Système de gestion
-------------------------------------------------
Objectif : Créer un système de gestion complet
Instructions :
1. Utiliser tous les concepts appris
2. Créer un système modulaire
3. Implémenter la gestion d'erreurs
4. Implémenter la sécurité
5. Documenter le projet

Résultat attendu : Système de gestion complet

Exercice 2 : Projet complet - Application réseau
-------------------------------------------------
Objectif : Créer une application réseau complète
Instructions :
1. Utiliser toutes les fonctionnalités réseau
2. Traiter les données avec des outils texte
3. Gérer les processus
4. Implémenter la sécurité
5. Logger les actions

Résultat attendu : Application réseau complète

Exercice 3 : Projet complet - Suite d'outils système
------------------------------------------------------
Objectif : Créer une suite d'outils système complète
Instructions :
1. Créer plusieurs outils cohérents
2. Utiliser des bibliothèques communes
3. Implémenter la gestion de configuration
4. Implémenter le logging
5. Créer une documentation complète

Résultat attendu : Suite d'outils système complète

Défi final : global_master_project.sh
--------------------------------------
Objectif : Créer un projet maître intégrant tous les concepts
Instructions :
1. Créer un projet `global_master_project.sh` qui :
   - Intègre tous les concepts du shell
   - Est modulaire et extensible
   - Implémente la gestion d'erreurs
   - Implémente la sécurité
   - Inclut une documentation complète
   - Inclut une suite de tests
2. Le projet doit être professionnel
3. Documenter chaque composant
4. Ajouter des guides d'utilisation

Résultat attendu : Projet `global_master_project.sh` professionnel

================================================================================
STATUT DES EXERCICES
================================================================================

Labos individuels :
-------------------
Labo A : ✓ Terminé
Labo B : ✓ Terminé
Labo C : ✓ Terminé
Labo D : ✓ Terminé
Labo E : ✓ Terminé
Labo F : ⏳ En attente
Labo G : ⏳ En attente
Labo H : ⏳ En attente
Labo I : ⏳ En attente
Labo J : ⏳ En attente

Labos mixtes (regroupements) :
--------------------------------
Labo AB : ⏳ En attente
Labo CD : ⏳ En attente
Labo EF : ⏳ En attente
Labo GH : ⏳ En attente
Labo IJ : ⏳ En attente
Labo ABCD : ⏳ En attente
Labo EFGH : ⏳ En attente
Labo ABCDEFGH : ⏳ En attente
Labo GLOBAL : ⏳ En attente

================================================================================
FIN DU DOCUMENT
================================================================================
