#!/bin/bash
#Pedir un producto y que muestre las marcas de dicho producto de ambos almacenes con número delante
#Da igual mayúsculas y minúsculas
#Elegir producto por su número y que muestre las tallas disponibles
read -p "Introduce un nombre de producto: " producto

contador=1
#cat almacen1 | grep -i "^$producto;" > aux1
#cat almacen2 | grep -i "^$producto;" > aux2

almacen1=`cat almacen1 | grep -i "^$producto;"`
almacen2=`cat almacen2 | grep -i "^$producto;"`
IFS=$'\n'
for linea in $almacen1; do
    echo "$contador.$linea" >> conNumero1
    contador=$(($contador + 1))
done
for linea in $almacen2; do
    echo "$contador.$linea" >> conNumero1
    contador=$(($contador + 1))
done

cat conNumero1 | cut -d";" -f1,2
read -p "Elige un número para ver sus tallas: " numeroMarca
cat conNumero1 | grep "^$numeroMarca." | cut -d";" -f4

rm conNumero1