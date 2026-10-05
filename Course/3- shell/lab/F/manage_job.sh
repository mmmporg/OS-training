#!/bin/sh

set -m

# 1. Lancer plusieurs processus
sleep 1 &
sleep 2 &
sleep 3 &

# 2. Gérer les jobs avec `jobs`, `fg`, `bg`
jobs
fg %1
bg %1
jobs

# 3. Utiliser `wait` pour attendre la fin
wait

# 4. Gérer les codes de retour
echo $?

# 5. Créer un script de parallélisation simple
for i in 1 2 3; do
    sleep $i &
done
wait
echo "Tous les processus terminés avec un code de retour de ${?}"
