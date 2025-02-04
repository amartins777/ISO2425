#!/bin/bash
# Script Entrgable1
# Autor: Azara Martín Sánchez
# Fecha: 03-02-2025

clear


while true; do

		echo " a - Añadir una entrada "
		echo " b - Buscar por dni "
		echo " c - Ver la agenda completa "
		echo " d - Eliminar todas las entradas de la agenda"
		echo " e - Finalizar"

		read -p " Introduce una opción" opt

		case $opt in

			a)
				read -p " Dime un DNI " dni
				if grep "^$dni:" agenda.txt > /dev/null; then

					echo " Usuario existente "
				else

					read -p " Introduzca su nombre " name
					read -p " Introduzca sus apellidos " apell
					read -p " Introduzca su localidad " loc
					echo "$dni:$name:$apell:$loc" >> agenda.txt

				fi
			;;

			b)
				read -p " Dime un DNI " dni
				if grep "^$dni:" agenda.txt > /dev/null; then

					name=$(grep "^$dni:" agenda.txt |  cut -d ":" -f 2)
					apell=$(grep "^$dni:" agenda.txt | cut -d ":" -f 3)
					loc=$(grep "^$dni:" agenda.txt | cut -d ":" -f 4)
					echo "La persona con DNI número $dni es: $name $apell, y vive en $loc"

				else

					echo "Error"
				fi
			;;

			c)
				if [ -s agenda.txt ]; then

					cat agenda.txt

				else

					echo " Agenda vacía "

				fi
			;;

			d)

				> agenda.txt

			;;

			e)
				break
			;;

			*)
				echo "Opción no válida"
			;;

		esac

done
