#!/bin/bash
#Jose Antonio Duarte Perez

if [[ ! -f $1 ]]
then
	read -p "El fichero no existe o es un directorio. ¿Desea crearlo? S/N: " opcion
	
	if [[ $opcion == "S" || $opcion == "s" ]]
	then
		echo > $1
	fi
	
elif [[ -r $1 && -w $1 ]]
then
	echo "Tiene permisos de lectura y escritura."
	chmod ug+x $1
	ls -l $1
else
	echo "El fichero no tiene permisos de lectura-escritura."
fi
