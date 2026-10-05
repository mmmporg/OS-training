#!/bin/sh

CPU_THRESHOLD=80
MEM_THRESHOLD=80

echo "=== Monitoring des processus (Ctrl+C pour arrêter) ==="
echo "Seuil CPU: ${CPU_THRESHOLD}% | Seuil MEM: ${MEM_THRESHOLD}%"

while true; do
    echo ""
    echo "[$(date '+%H:%M:%S')] Top 10 processus par CPU :"
    ps aux | sort -k3 -rn | head -n 10 | while read line; do
        pid=$(echo "$line" | awk '{print $2}')
        cpu=$(echo "$line" | awk '{print $3}')
        mem=$(echo "$line" | awk '{print $4}')
        comm=$(echo "$line" | awk '{print $11}')

        echo "  PID $pid ($comm) - CPU: ${cpu}% | MEM: ${mem}%"

        # # Conversion en entier pour la comparaison
        # cpu_int=${cpu%.*}
        # mem_int=${mem%.*}
        # if [ "$cpu_int" -gt "$CPU_THRESHOLD" ]; then

        # Comparaison avec bc (POSIX compliant)
        if [ "$(echo "$cpu > $CPU_THRESHOLD" | bc)" -eq 1 ]; then
            echo "  [ALERTE CPU] PID $pid ($comm) : ${cpu}%"
        fi

        # if [ "$mem_int" -gt "$MEM_THRESHOLD" ]; then
        
        if [ "$(echo "$mem > $MEM_THRESHOLD" | bc)" -eq 1 ]; then
            echo "  [ALERTE MEM] PID $pid ($comm) : ${mem}%"
        fi
    done

    sleep 5
done