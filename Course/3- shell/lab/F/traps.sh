#!/bin/sh

# ========================================
# Guide pour TESTER la gestion des signaux
# Pour vérifier que le script est parfaitement robuste, ouvrez deux terminaux différents :

# Test 1 : Interruption par le clavier (SIGINT)
# Dans le premier terminal, lancez le script : sh backup_worker.sh
# Pendant qu'il affiche "Étape en cours...", appuyez sur Ctrl + C.
# Résultat attendu : Le script s'arrête immédiatement, affiche la ligne [NETTOYAGE] et le fichier dans /tmp/ est supprimé.

# Test 2 : Interruption par le système (SIGTERM)
# Dans le premier terminal, relancez le script et notez le numéro de PID affiché (ex: PID: 12345).
# Dans le second terminal, envoyez le signal de terminaison officiel avec la commande kill :
# kill 12345

# Résultat attendu : Le script intercepte immédiatement l'ordre du second terminal, exécute la fonction cleanup et s'éteint proprement.

# Test 3 : Fin d'exécution normale (EXIT)
# Laissez le script s'exécuter pendant 20 secondes sans toucher à rien.
# Résultat attendu : Une fois l'étape 10/10 validée, le script atteint sa dernière ligne. Grâce au piège posé sur EXIT, la fonction de nettoyage se déclenche tout de même avant de rendre la main au terminal.
# ========================================

# Définition des variables et du fichier temporaire à nettoyer
TMP_FILE="/tmp/work_in_progress_$$.txt"

# 2. FONCTION DE NETTOYAGE À LA SORTIE
cleanup() {
    trap - INT TERM EXIT # On retire le piège pour éviter le doublon

    # Supprime le fichier temporaire s'il existe
    if [ -f "$TMP_FILE" ]; then
        rm -f "$TMP_FILE"
        echo "\n[NETTOYAGE] Fichier temporaire supprimé avec succès."
    fi
    echo "[FIN] Arrêt propre du script."
    exit 0
}

# 1, 3 & 4. SCRIPT ROBUSTE ET GESTION DE PLUSIEURS SIGNAUX
# On capture SIGINT (Ctrl+C), SIGTERM (Commande kill) et EXIT (Fin normale du script)
trap 'cleanup' INT TERM EXIT

# --- Début du traitement simulé ---
echo "Initialisation du script (PID: $$)..."
echo "Données de travail importantes" > "$TMP_FILE"
echo "[INFO] Fichier temporaire créé : $TMP_FILE"
echo "Traitement en cours... Appuyez sur Ctrl+C pour tester le nettoyage."

# Boucle de traitement simulée
i=1
while [ "$i" -le 10 ]; do
    echo "Étape $i/10 en cours..."
    sleep 2
    i=$((i + 1))
done

echo "[SUCCÈS] Le traitement est arrivé à son terme."
# Le trap 'EXIT' va maintenant se déclencher automatiquement ici
