#!/bin/bash

directorio="$1"

find "$directorio" -type f -mtime +7 -delete
