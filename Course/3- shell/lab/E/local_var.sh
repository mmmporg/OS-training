#!/bin/sh

# Note: 'local' n'est pas POSIX, c'est une extension bash/dash
# En POSIX, on utilise des conventions de nommage pour simuler les variables locales

func() {
    # Convention: préfixe __ pour les variables "locales"
    # Pas de moyen de les rendre reelement locales en POSIX
    __var="my local variable"
    echo "$__var"
}

func