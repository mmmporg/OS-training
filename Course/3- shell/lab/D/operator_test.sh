#!/bin/sh

# Operateur de fichiers
if [ -f /etc/passwd ]; then
    echo "File exists"
fi

if [ -d /etc ]; then
    echo "Directory exists"
fi

if [ -e /etc/paswd ]; then
    echo "File exists"
fi

if [ ! -r /etc/shadow ]; then
    echo "ce fichier de mot de passe n'est pas lisible"
fi

if [ ! -w / ]; then
    echo "ce repertoire n'est pas modifiable"
fi

if [ -x /bin/bash ]; then
    echo "ce fichier est executable"
fi

# Operateur de chaines
if [ "bonjour" = "bonjour" ]; then
    echo "oui c'est la meme chaine de caractere"
fi

if [ "bonjour" != "salut" ]; then
    echo "oui c'est different"
fi

if [ -n "bonjour" ]; then
    echo "la chaine n'est pas vide"
fi

if [ -z "" ]; then
    echo "la chaine est vide"
fi

# Operateur numeriques
if [ 2 -eq 2 ]; then
    echo "oui ces chiffres sont pareils"
fi

if [ 2 -ne 3 ]; then
    echo "oui ces chiffres ne sont pas pareils"
fi

if [ 2 -lt 3 ]; then
    echo "oui 2 est plus petit que 3"
fi

if [ 3 -gt 2 ]; then
    echo "oui 3 est plus grand que 2"
fi

if [ 2 -le 3 ]; then
    echo "oui 2 est plus petit ou egal a 3"
fi

if [ 3 -ge 2 ]; then
    echo "oui 3 est plus grand ou egal a 2"
fi


# Operateur logiques
if [ 2 -eq 2 -a 3 -gt 2 ]; then
    echo "oui 2 est egal a 2 et 3 est plus grand que 2"
fi

if [ 2 -eq 3 -o 3 -gt 2 ]; then
    echo "oui 2 est egal a 3 (faux) ou 3 est plus grand que 2 (vrai)"
fi

if [ ! 2 -eq 3 ]; then
    echo "oui 2 n'est pas egal a 3"
fi