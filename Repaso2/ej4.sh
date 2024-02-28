#!/bin/bash
IFS=$'\n'
FICHERO=`cat almacen1`
for linea in $FICHERO; do
  precio=`echo $linea | cut -d';' -f5`
  if [ $precio -lt 90 ]; then
    producto=`echo $linea | cut -d';' -f1,2`
    echo "No se actualiza el precio de $producto"
  else
    precio=$(($precio + 8))
    lineaParcial=`echo $linea | cut -d';' -f1,2,3,4`
    echo "$lineaParcial;$precio"
  fi
done

FICHERO=`cat almacen2`
for linea in $FICHERO; do
  precio=`echo $linea | cut -d';' -f5`
  if [ $precio -lt 90 ]; then
    producto=`echo $linea | cut -d';' -f1,2`
    echo "No se actualiza el precio de $producto"
  else
    precio=$(($precio + 8))
    lineaParcial=`echo $linea | cut -d';' -f1,2,3,4`
    echo "$lineaParcial;$precio"
  fi
done