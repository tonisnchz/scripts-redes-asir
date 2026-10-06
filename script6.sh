#!/bin/bash
# Modificado en mi entorno local

# Modificado desde Producción
directorio="$1"

find "$directorio" -type f -mtime +7 -delete
