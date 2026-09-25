#!/bin/bash

origen="$1"

destino="$2"

#si no existe el directoiro lo creamos

mkdir -p "$destino"

#recorremos los directorios y sus archivos y los copiamos

for archivo in "$origen"/*; do

	if [ -f "$archivo" ]; then
        	cp "$archivo" "$destino"/
        	echo "Copiado: $archivo"
    	fi
done
