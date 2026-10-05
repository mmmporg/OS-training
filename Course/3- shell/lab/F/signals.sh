#!/bin/sh


# 1. Envoyer des signaux avec `kill`
kill -L
echo ""

# 2. Tester SIGTERM, SIGINT, SIGKILL
sleep 10 &
sleep_pid=$!

echo "Envoi de SIGTERM..."
kill -TERM $sleep_pid
echo "Envoi de SIGINT..."
kill -INT $sleep_pid
echo "Envoi de SIGKILL..."
kill -KILL $sleep_pid
echo ""

# 3. Comprendre la différence entre les signaux
echo "SIGTERM : demande de terminaison normale"
echo "SIGINT : demande de terminaison par l'utilisateur (Ctrl+C)"
echo "SIGKILL : demande de terminaison immédiate"
echo ""

# 4. Créer un script qui gère les signaux
trap 'echo "Signal SIGINT reçu, arrêt en cours..."' INT
trap 'echo "Signal SIGTERM reçu, arrêt en cours..."' TERM

# Fonction pour gérer les signaux
handle_signals() {
    echo "Traitement des signaux..."
    echo "Fin du programme."
    exit 0
}

trap 'handle_signals' INT TERM

# 5. Documenter les signaux courants
echo "Les signaux courants sont :"
kill -l | tr ' ' '\n' | grep -E '^(INT|TERM|KILL)$'

# Boucle infinie pour simuler un traitement
while true; do
    sleep 1
done
