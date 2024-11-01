#!/bin/bash

# Verificar si la carpeta ya está montada
if mount | grep -qs '/home/varodev/win_share'; then
    notify-send "Ya Montado" "La carpeta compartida de Windows ya está montada."
else
    # Intentar montar la carpeta compartida de Windows
    if sudo mount -t cifs -o username="Alvaro Acevedo",password=analisis@123,uid=1000,gid=1000,iocharset=utf8 //10.0.0.102/shared_folder /home/varodev/win_share; then
        notify-send "Montaje Exitoso" "La carpeta compartida de Windows se ha montado correctamente."
    else
        notify-send "Error de Montaje" "No se pudo montar la carpeta compartida de Windows."
    fi
fi
