#!/bin/sh
# Exercice 1 : Lancement de processus
# Objectif : Lancer et gérer des processus

echo "=== Exercice 1 : Lancement de processus ==="
echo ""

# 1. Lancer un processus en avant-plan
echo "1. Lancement d'un processus en avant-plan (sleep 2)..."
echo "   Le script sera bloqué pendant 2 secondes..."
sleep 2
echo "   Processus terminé."
echo ""

# 2. Lancer un processus en arrière-plan avec &
echo "2. Lancement d'un processus en arrière-plan (sleep 3)..."
sleep 3 &
bg_pid=$!
echo "   Processus lancé en arrière-plan avec PID : $bg_pid"
echo "   Le script continue immédiatement..."
echo ""

# 3. Lister les processus avec ps
echo "3. Liste des processus avec ps :"
echo "   Processus actuels du shell :"
ps | grep -E "sleep|PID" || echo "   (sleep peut déjà être terminé)"
echo ""

# 4. Attendre que le processus en arrière-plan se termine
echo "4. Attente de la fin du processus en arrière-plan..."
wait $bg_pid
echo "   Processus $bg_pid terminé."
echo ""

# 5. Lancer un processus et tuer un processus
echo "5. Lancement d'un processus long et envoi de signal kill..."
sleep 10 &
kill_pid=$!
echo "   Processus lancé avec PID : $kill_pid"
sleep 1
echo "   Envoi de SIGTERM au processus $kill_pid..."
kill -TERM $kill_pid
wait $kill_pid 2>/dev/null
echo "   Processus terminé."
echo ""

# 6. Lancer plusieurs processus
echo "6. Lancement de plusieurs processus en arrière-plan..."
for i in 1 2 3; do
    sleep $i &
    echo "   Processus $i lancé avec PID : $!"
done
echo ""

# Attendre tous les processus
echo "7. Attente de tous les processus en arrière-plan..."
wait
echo "   Tous les processus terminés."
echo ""

echo "=== Fin de l'exercice 1 ==="
