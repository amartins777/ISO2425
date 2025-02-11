#!/bin/bash
# Script entregable3 Fiveormore
# Autor: Azara Martín Sánchez
# Fecha: 10-02-2025

clear

fich=$1
dir=$2
arch=$(ls $2 | wc -l)

if [ $# -ne 2 ]; then
	echo "Error, parámetros incorrectos"
	exit
fi

if [ -f $1 ]; then
	echo "Error, fichero $1  existente "
	exit
fi

if [ ! -d $2 ]; then
	echo "El directorio $2 no existe "
	exit
fi

if [ $arch -eq 0 ]; then

	echo " Directorio $2 vacío "
	exit

fi

echo "Azara Martín Sánchez "

for i in $2/*.txt; do

	lineas=$(cat $i | wc -l)
	if [ $lineas -ge 5 ]; then

		echo $i
		echo $i >> $1
		palabras=$(cat $i | wc -w)
		echo "El fichero original tiene $palabras palabras" > $i.q
		cat $i >> $i.q
	fi

done
num=$(cat $1 | wc -l)
echo " Se ha identificado $num fichero" >> $1

