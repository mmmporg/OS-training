#!/bin/sh

#break
for i in $(seq 1 10); do
    if [ $i -eq 5 ]; then
        break
    fi
    echo $i
done

#continue
for i in $(seq 1 10); do
    if [ $i -eq 5 ]; then
        continue
    fi
    echo $i
done

#continue dans une boucle while
counter=0
while [ $counter -lt 10 ]; do
    counter=$((counter + 1))
    if [ $counter -eq 5 ]; then
        continue
    fi
    echo $counter
done

#break avec des etiquettes ou conditions
#Etiquette pas supporte mais numero utilise pour preciser la profondeur de la boucle a quitter
count=0
#outer:
    for i in $(seq 1 5); do
        for j in $(seq 1 5); do
            count=$((count + 1))
            if [ $count -eq 10 ]; then
                break 2 # 2 a la place de l'etiquette
            fi
            echo "count: $count, i: $i, j: $j"
        done
    done
