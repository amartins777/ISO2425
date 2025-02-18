#!/bin/bash
# Script Entregable Calculadora
# Autor: Azara Martín Sánchez
# Fecha. 05-02-2025

clear

FICHERO=$1
OPERACIONES=$2
echo "Autor: Azara Martín Sánchez"

if [ $# -ne 2 ]; then 

	echo "Error, parámetro incorrecto "
	exit
fi

if [ -f $1 ]; then

	echo " Fichero existente "
	exit
fi

read -p "Operación Op1 Op2 " oper op1 op2

num=0

while [ $num -lt $2 ]; do

    if [ $oper == "X" ]; then
        break
    fi
    
    case $oper in
        S) 
		RES=$((op1 + op2)) 
	;;
        R) 
		RES=$((op1 - op2)) 
	;;
        M) 
		RES=$((op1 * op2)) 
	;;
        D) 
		RES=$((op1 / op2))
        ;;
	
        *) 
		echo "Operación no válida."
	;;
   
    esac

	echo "Resultado: $RES"
	echo "$oper $op1 $op2" >> $1

done
echo "Fichero guardado en: $(pwd)/$1"
cat $1    
