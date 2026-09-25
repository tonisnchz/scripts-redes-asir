#!/bin/bash

directorio="$1"

find "$directorio" -type f | wc -l


