#!/bin/bash
read -p "Introduce un nombre de producto: " producto
almacen1=`grep -i "^$producto;" almacen1`
almacen2=`grep -i "^$producto;" almacen2`
contador=1;
IFS=$'\n'
for linea in $almacen1; do
  echo "$contador.$linea" >> conNumero
  contador=$(($contador + 1))
done
for linea in $almacen2; do
  echo "$contador.$linea" >> conNumero
  contador=$(($contador + 1))
done
cat conNumero |cut -d';' -f1,2

read -p "Elige un número para ver sus tallas: " numeroMarca
cat conNumero | grep "^$numeroMarca." | cut -d';' -f4

rm conNumero