#!/bin/bash

# Definir las variables de directorios
origen="/home/usuario/seguridad"
destino_base="/var/tmp/Backups"
fecha=$(date -d 'today' +"%d-%m-%Y")
fechayer=$(date -d '-1 days' +"%d-%m-%Y")
destino="$destino_base/$fecha"
destinoayer="$destino_base/$fechayer/"

# Crear el directorio de destino si no existe
mkdir -p "$destino"

rsync -av --link-dest="$destinoayer" "$origen" "$destino"
