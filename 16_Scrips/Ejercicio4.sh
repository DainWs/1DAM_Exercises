#!/bin/bash
#Jose Antonio Duarte Perez

opt=$(cat ./clave)

if [ "$opt" = $1 ]
then
	echo "CORRECTO"
else
	echo "INCORRECTO"
fi
