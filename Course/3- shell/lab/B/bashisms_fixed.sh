#!/bin/sh

# Script POSIX-compliant (bashisms corrigés)

# Correction 1: Utiliser [ ] au lieu de [[ ]]
if [ "$USER" = "root" ]; then
    echo "Vous êtes root"
else
    echo "Vous n'êtes pas root"
fi

# Correction 2: Arrays non supportés en POSIX - utiliser des chaînes avec séparateurs
fruits="apple:banana:cherry"
first_fruit=$(echo "$fruits" | cut -d':' -f1)
echo "Premier fruit: $first_fruit"

# Correction 3: Boucle while POSIX au lieu de for avec syntaxe C
i=0
while [ "$i" -lt 5 ]; do
    echo "Nombre: $i"
    i=$((i + 1))
done

# Correction 4: Utiliser = au lieu de ==
if [ "$1" = "test" ]; then
    echo "Argument est test"
fi

# Correction 5: Arrays associatifs non supportés en POSIX - utiliser des variables séparées
color_red="#FF0000"
color_green="#00FF00"
echo "Red color: $color_red"

# Correction 6: Utiliser sed pour la substitution de pattern
text="Hello World"
new_text=$(echo "$text" | sed 's/World/POSIX/')
echo "$new_text"

# Correction 7: Utiliser > file 2>&1 au lieu de &>
echo "Message" > /tmp/output.log 2>&1
