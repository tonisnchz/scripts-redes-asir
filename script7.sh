#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Error: Este script debe ejecutarse con privilegios de root (sudo)."
  exit 1
fi

directorio="$1"

patron="$2"

reemplazo="$3"

find "$directorio" -type f | while read -r archivo; do
    if grep -q "$patron" "$archivo" 2>/dev/null; then
        sed -i "s/$patron/$reemplazo/g" "$archivo" 2>/dev/null
    fi
done
