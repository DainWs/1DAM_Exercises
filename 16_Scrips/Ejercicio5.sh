#!/bin/sh
#Jose Antonio Duarte Perez

#bucle infinito mientras que no selecciones SALIR.
while true
do
	#Menu De Opciones
	dialog --backtitle "Bienvenido a CalculaTuVida" \
	       --title "" --clear \
	       --menu "" 40 80 35 \
	       	1 "Suma" \
	       	2 "Resta" \
		3 "Multiplicacion" \
		4 "Salir" 2> ./resultOpt

	num1=""
	num2=""

	opt=$(cat ./resultOpt)

	if [ "$opt" = "4" ]; then
		clear;
		exit
	fi

	#Formulario para meter los numeros
	dialog --backtitle "Bienvenido A CalculaTuVIda" \
	       --title "" \
	       --form "" 40 80 35 \
		"Numero 1 : " 1 1 "$num1" 1 10 15 0 \
		"Numero 2 : " 2 1 "$num2" 2 10 15 0 2> ./num2


	num1=$(head -n1 ./num2)
	num2=$(tail -n1 ./num2)

	#creamos las operaciones y sus respuestas
	suma=$(echo $num1 " + " $num2 " = " `expr $num1 + $num2`)
	resta=$(echo $num1 " - " $num2 " = " `expr $num1 - $num2`)
	multi=$(echo $num1 " * " $num2 " = " `echo $(($num1 * $num2))`)

	#Dependiendo de la Opcion seleccionada en el menu de opciones
	#te muestra un dialogo o otro.
	case $opt in
		4)
			exit
			;;
		3)
	        dialog  --backtitle "Bienvenido A CalculaTuVida" \
	            --title "Realizar Todos" \
	            --msgbox " $multi" 10 30
	        ;;
		2)
	        dialog  --backtitle "Bienvenido A CalculaTuVida" \
	            --title "Realizar Todos" \
	            --msgbox " $resta" 10 30
	        ;;
		1)
	        dialog  --backtitle "Bienvenido A CalculaTuVida" \
	            --title "Realizar Todos" \
	            --msgbox " $suma" 10 30
	        ;;

	esac
done
