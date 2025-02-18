#!/bin/bash
# Script Entregable Calculadora
# Autor: Azara Martín Sánchez
# Fecha. 05-02-2025

clear

echo "Autor: Azara Martín Sánchez"

if [ $1 -ne 2 ]; then 

	echo "Error, parámetro incorrecto "
	exit
fi

if [ -f $1 ]; then

	echo " Fichero existente "
	exit
fi

read -p "Operación Op1 Op2 " oper op1 op2

num=0

while [ 
