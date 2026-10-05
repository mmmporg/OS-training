#!/bin/bash

# Script avec des bashisms à corriger pour le rendre POSIX

# Bashism 1: Double crochets [[ ]]
if [[ "$USER" == "root" ]]; then
    echo "Vous êtes root"
else
    echo "Vous n'êtes pas root"
fi

# Bashism 2: Arrays
fruits=("apple" "banana" "cherry")
echo "Premier fruit: ${fruits[0]}"

# Bashism 3: Boucle for avec syntaxe C
for ((i=0; i<5; i++)); do
    echo "Nombre: $i"
done

# Bashism 4: Opérateur == dans les tests
if [ "$1" == "test" ]; then
    echo "Argument est test"
fi

# Bashism 5: Arrays associatifs
declare -A colors
colors[red]="#FF0000"
colors[green]="#00FF00"
echo "Red color: ${colors[red]}"

# Bashism 6: Substitution de pattern ${var//pattern/replacement}
text="Hello World"
echo "${text//World/POSIX}"

# Bashism 7: &> pour rediriger stdout et stderr
echo "Message" &> /tmp/output.log
