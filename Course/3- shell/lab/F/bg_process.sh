#!/bin/sh

# # 1. Lancer un processus en arrière-plan
# sleep 3 &
# bg_pid=$!
# echo "Processus lancé en arrière-plan avec PID : $bg_pid"

# sleep 1

# # 2. Ramener un processus en avant-plan (`fg`)
# fg %1

# # 3. Mettre un processus en arrière-plan (`bg`)
# jobs
# bg %1

# # 4. Lister les jobs avec `jobs`
# jobs

# 5. Créer un script de gestion de jobs
#!/bin/sh

# Fonction pour lister les jobs
list_jobs() {
    jobs
}

# Fonction pour ramener un job en avant-plan
fg_job() {
    fg %$1
}

# Fonction pour mettre un job en arrière-plan
bg_job() {
    bg %$1
}

# Fonction pour supprimer un job
kill_job() {
    kill %$1
}

# Utilisation
list_jobs
fg_job 1
bg_job 1
kill_job 1
