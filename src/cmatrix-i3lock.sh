#!/bin/bash

# Ejecuta kitty en pantalla completa y corre cmatrix
kitty --start-as fullscreen cmatrix &

# Espera un momento para que se inicie kitty
sleep 0.2

# Activa el modo de pantalla completa usando bspc (comando de BSPWM)
bspc node -t fullscreen

# Bloquear la pantalla con i3lock, luego mata la terminal
i3lock -n; bspc node -c



