#!/bin/bash

# Verificar que se haya pasado un nombre de archivo
if [ -z "$1" ]; then
  echo "Uso: $0 nombre_archivo_sin_extension"
  exit 1
fi

archivo="$1.c"
ejecutable="$1"

# Verificar que el archivo C exista
if [ ! -f "$archivo" ]; then
  echo "Error: El archivo '$archivo' no existe."
  exit 1
fi

# Compilar el archivo
gcc "$archivo" -o "$ejecutable"

# Verificar si la compilación fue exitosa
if [ $? -eq 0 ]; then
  echo "Compilación exitosa. Ejecutable: $ejecutable"
  clear
  ./$ejecutable
else
  echo "Error en la compilación."
fi

