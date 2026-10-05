#!/bin/sh

# Définition des fichiers uniques avec le PID du script principal
FIFO_PIPE="/tmp/my_ipc_pipe_$$"
LOG_FILE="/tmp/ipc_log_$$.txt"

# 2. NETTOYAGE À LA SORTIE (Invoqué sur INT, TERM ou fin normale)
cleanup() {
    # Désactivation immédiate des traps pour éviter le double appel
    trap - INT TERM EXIT
    
    echo "\n[NETTOYAGE] Arrêt des processus et suppression des ressources..."
    # Tuer les processus enfants s'ils tournent encore
    [ -n "$PRODUCER_PID" ] && kill "$PRODUCER_PID" 2>/dev/null
    [ -n "$CONSUMER_PID" ] && kill "$CONSUMER_PID" 2>/dev/null
    
    # Nettoyage des fichiers créés
    rm -f "$FIFO_PIPE"
    rm -f "$LOG_FILE"
    echo "[FIN] Ressources IPC libérées proprement."
    exit 0
}
trap 'cleanup' INT TERM EXIT

# 1. CRÉATION DU PIPE NOMMÉ (FIFO)
if ! mkfifo "$FIFO_PIPE"; then
    echo "[ERREUR] Impossible de créer le pipe nommé." >&2
    exit 1
fi

echo "[INIT] Fichiers créés."
echo " -> Pipe Nommé : $FIFO_PIPE"
echo " -> Fichier Log : $LOG_FILE"
echo "--------------------------------------------------"

# =====================================================================
# 4 & 5. LE PROCESSUS CONSOMMATEUR (S'exécute en arrière-plan)
# =====================================================================
start_consumer() {
    # Variable pour mémoriser si un signal a été reçu
    signal_received=0

    # 3. LE TRAP DU SIGNAL DE COMMUNICATION (SIGUSR1)
    # Dès que le producteur envoie USR1, le consommateur s'active
    trap 'signal_received=1' USR1

    echo "[CONSO] Démarré (PID: $$). En attente de notification (SIGUSR1)..."

    while true; do
        # Attente passive d'un signal (Évite de consommer du CPU)
        sleep 10 & 
        wait $!

        if [ "$signal_received" -eq 1 ]; then
            signal_received=0 # Réinitialise le drapeau
            
            # Lecture du message bloqué dans le Pipe Nommé
            if read -r data < "$FIFO_PIPE"; then
                # Écriture dans le fichier temporaire de log
                echo "$(date '+%H:%M:%S') - [CONSO] Donnée consommée : $data" >> "$LOG_FILE"
                echo "[CONSO] Signal reçu ! J'ai lu dans le FIFO : '$data'"
                
                # Condition d'arrêt si le mot "STOP" est transmis
                if [ "$data" = "STOP" ]; then
                    echo "[CONSO] Message de fin détecté. Arrêt."
                    break
                fi
            fi
        fi
    done
}

# =====================================================================
# 4 & 5. LE PROCESSUS PRODUCTEUR (S'exécute en arrière-plan)
# =====================================================================
start_producer() {
    # Le consommateur a besoin de quelques millisecondes pour s'initialiser
    sleep 1
    
    # Liste de données simulées à envoyer au consommateur
    for item in "Temperature_23C" "Pression_1013hPa" "Humidite_45%" "STOP"; do
        echo "[PROD] Préparation de la donnée : $item"
        sleep 2
        
        # Écriture de la donnée dans le FIFO (Bloquant tant que personne ne lit)
        echo "$item" > "$FIFO_PIPE" &
        WRITE_PID=$!
        
        # 3. ENVOI DU SIGNAL pour réveiller le consommateur
        # On cible le PID du consommateur principal
        kill -USR1 "$CONSUMER_PID" 2>/dev/null
        
        # On attend que l'écriture dans le pipe se termine
        wait "$WRITE_PID"
    done
}

# =====================================================================
# LANCEMENT ET PILOTAGE DU SCRIPT
# =====================================================================

# 1. Lancement du Consommateur en arrière-plan
start_consumer &
CONSUMER_PID=$!

# 2. Lancement du Producteur en arrière-plan
start_producer &
PRODUCER_PID=$!

# Attente de la fin des processus enfants
wait "$PRODUCER_PID"
wait "$CONSUMER_PID"

# Lecture finale du fichier temporaire pour preuve du fonctionnement
echo "--------------------------------------------------"
echo "[RÉSULTAT] Contenu final du fichier temporaire de log :"
cat "$LOG_FILE"
