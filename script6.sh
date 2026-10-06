#!/bin/bash
# Modificado desde Producción
directorio="$1"

find "$directorio" -type f -mtime +7 -delete
