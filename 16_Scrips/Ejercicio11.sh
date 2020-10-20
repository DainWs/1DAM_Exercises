#!/bin/bash
#Jose Antonio Duarte Perez

read -p "Introduzca la ruta: " directorio

fileCount=$(find $directorio/* -type d | wc -l)
dirCount=$(find $directorio/* -type f | wc -l)

echo "hay : "
echo "$dirCount directorios"
echo "$fileCount ficheros"