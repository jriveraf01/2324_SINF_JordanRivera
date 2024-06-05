#!/bin/bash
#Crear un menu y que llame a los 4 ejercicios anteriores
while true; do
 echo "******Menu******"
 echo "1.-Listado de Productos"
 echo "2.-Tallas de un Producto"
 echo "3.-Subir precio"
 echo "4.-Salir"
 read -p "Seleccione una opción: " opcion
case $opcion in
    1)bash ej2.sh;;
    2)bash ej3.sh;;
    3)bash ej4.sh;;
    4)clear
    exit 0;;
    *) echo "Opción incorrecta"
        exit 0;;
esac
done