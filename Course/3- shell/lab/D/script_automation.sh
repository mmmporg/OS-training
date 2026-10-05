#!/bin/sh

# script_automation.sh - Script d'automation intégrant les structures de contrôle
# Défi final du Labo D

# Fonction pour afficher le menu
show_menu() {
    echo "=========================================="
    echo "       SCRIPT D'AUTOMATION"
    echo "=========================================="
    echo "1. Compter les fichiers (boucle for)"
    echo "2. Surveillance de fichier (boucle until)"
    echo "3. Traitement de menu (case)"
    echo "4. Recherche avec limite (break)"
    echo "5. Grille de nombres (boucles imbriquées)"
    echo "6. Quitter"
    echo "=========================================="
    printf "Choix: "
}

# Fonction 1: Compter les fichiers (boucle for)
count_files() {
    echo "=== COMPTAGE DE FICHIERS ==="
    count=0
    for item in *; do
        if [ -f "$item" ]; then
            count=$((count + 1))
            echo "Fichier: $item"
        fi
    done
    echo "Total fichiers: $count"
    echo ""
}

# Fonction 2: Surveillance de fichier (boucle until)
watch_file() {
    echo "=== SURVEILLANCE DE FICHIER ==="
    target="/tmp/test_watch_$$"
    touch "$target"
    echo "Fichier créé: $target"
    echo "En attente de suppression..."
    
    until [ ! -f "$target" ]; do
        sleep 1
    done
    
    echo "Fichier supprimé!"
    rm -f "$target" 2>/dev/null
    echo ""
}

# Fonction 3: Traitement de menu (case)
process_menu() {
    echo "=== TRAITEMENT DE MENU ==="
    printf "Entrez une option (start/stop/status): "
    read choice
    
    case "$choice" in
        start|START)
            echo "Démarrage du service..."
            ;;
        stop|STOP)
            echo "Arrêt du service..."
            ;;
        status|STATUS)
            echo "Statut du service: actif"
            ;;
        *)
            echo "Option invalide"
            ;;
    esac
    echo ""
}

# Fonction 4: Recherche avec limite (break)
search_with_limit() {
    echo "=== RECHERCHE AVEC LIMITE ==="
    printf "Nombre maximum de résultats: "
    read max_results
    
    count=0
    for item in *; do
        if [ "$count" -ge "$max_results" ]; then
            echo "Limite atteinte ($max_results résultats)"
            break
        fi
        if [ -f "$item" ]; then
            echo "Trouvé: $item"
            count=$((count + 1))
        fi
    done
    echo "Total affiché: $count"
    echo ""
}

# Fonction 5: Grille de nombres (boucles imbriquées)
number_grid() {
    echo "=== GRILLE DE NOMBRES ==="
    printf "Taille de la grille: "
    read size
    
    for i in $(seq 1 "$size"); do
        row=""
        for j in $(seq 1 "$size"); do
            product=$((i * j))
            row="$row $product"
        done
        echo "$row"
    done
    echo ""
}

# Boucle principale avec menu
while true; do
    show_menu
    read choice
    
    case "$choice" in
        1)
            count_files
            ;;
        2)
            watch_file
            ;;
        3)
            process_menu
            ;;
        4)
            search_with_limit
            ;;
        5)
            number_grid
            ;;
        6)
            echo "Au revoir!"
            exit 0
            ;;
        *)
            echo "Choix invalide"
            ;;
    esac
done
