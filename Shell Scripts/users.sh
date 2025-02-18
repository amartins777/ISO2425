#!/bin/bash
# Script Entregable4 Users
# Autor: Azara Martín Sánchez
# Fecha: 11-02-2025

clear

IFS=:
fecha=$(date +%d-%m-%Y)
hora=$(date +%H:%M)
echo "Informe de usuarios el dia $fecha a las $hora"

num=1000

while read us x uid gid d h shell; do

	if [ $uid -ge 1000 ]; then
		echo "$us - $uid "
  
	fi
	count=$(echo $uid | wc -l)
done < /etc/passwd

echo "$fecha $hora El usuario $us ha solicitado un informe de ususarios " >> /tmp/logeventos
