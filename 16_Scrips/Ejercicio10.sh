#!/bin/bash
#Jose Antonio Duarte Perez

read -p "Stock:
			1) Mando Wii: 16 Euros
			2) Portatil: 267 Euros
			3) Salir
			Que desea comprar: " opcion


case $opcion in
	 1)	
		read -p "los 16 euros: " dinero
		if [[ $dinero = 16 ]]
			then
			echo "Gracias buen provecho."
		elif [[ $dinero -gt 16 ]]
			then
			echo "El cambio: "$((dinero - 16))
		elif [[ $dinero -lt 16 ]]
			then
			echo "Falta"
		fi
		;;

	 2) 
		read -p "los 267 euros: " dinero
		if [[ $dinero = 267 ]]
			then
			echo "Gracias buen provecho."
		elif [[ $dinero -gt 267 ]]
			then
			echo "El cambio: "$((dinero - 267))
		elif [[ $dinero -lt 267 ]]
			then
			echo "Falta"
		fi
		;;
		
	 *) 
		exit 0
		;;
		
esac
