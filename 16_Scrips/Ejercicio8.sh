#!/bin/bash
#Jose Antonio Duarte Perez

while true
do
	read -rsn1 input
	
	if [[ "$input" = [0-9] ]]
		then
		echo "Es un numero"
	elif [[ "$input" = [a-z,A-Z] ]]
		then
		echo "Es una letra"
	else
		echo "Es un caracter Especial"
	fi
done
