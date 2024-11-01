#!/bin/bash

# Verificar si la carpeta está montada antes de intentar desmontar
if mount | grep -qs '/home/varodev/win_share'; then
    if sudo umount /home/varodev/win_share; then
        notify-send "Desmontaje Exitoso" "La carpeta compartida de Windows se ha desmontado correctamente."
    else
        notify-send "Error de Desmontaje" "No se pudo desmontar la carpeta compartida de Windows."
    fi
else
    notify-send "No Montado" "La carpeta compartida de Windows ya está desmontada."
fi
