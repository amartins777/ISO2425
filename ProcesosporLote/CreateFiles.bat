@echo off
Rem Script de Prueba
Rem Autor: Azara Martin Sanchez 
Rem Fecha: 20-11-2024

title Crear Files

echo Press1 para crear un archivo.txt
echo Press2 para crear un archivo.bat

set /P opcion=
if %opcion% EQU 1 goto opt1
if %opcion% EQU 2 goto opt2

:opt1

echo > archivo.txt
pause
exit


:opt2

echo > archivo.bat
pause
exit