#!/bin/bash
#Sumar un 8€ a los precios de todos los productos. Si el precio es menor a 90€ no se actualiza el precio
IFS=$'\n'
FICHERO=`cat almacen1`
for linea in $FICHERO; do
    precio=`echo $linea | cut -d";" -f5`
    if [ $precio -lt 90 ]; then
        echo "No se actualiza el precio de `echo $linea | cut -d";" -f1,2`"
        echo $linea >> almacen1aux
    else
        precio=$(($precio + 8))
        linea=`echo $linea | cut -d";" -f1,2,3,4`
        echo "$linea;$precio" >> almacen1aux
    fi
done
#rm almacen1
#mv almacen1aux almacen1

IFS=$'\n'
FICHERO=`cat almacen2`
for linea in $FICHERO; do
    precio=`echo $linea | cut -d";" -f5`
    if [ $precio -lt 90 ]; then
        echo "No se actualiza el precio de `echo $linea | cut -d";" -f1,2`"
        echo $linea >> almacen2aux
    else
        precio=$(($precio + 8))
        linea=`echo $linea | cut -d";" -f1,2,3,4`
        echo "$linea;$precio" >> almacen2aux
    fi
done
#rm almacen2
#mv almacen2aux almacen2
