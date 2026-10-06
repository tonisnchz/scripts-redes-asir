#!/bin/bash
# Modificado en mi entorno local
directorio="$1"

find "$directorio" -type f -mtime +7 -delete
