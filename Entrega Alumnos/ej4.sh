#!/bin/bash

IFS=$'\n'
FICHERO=`cat corredores.txt`
for linea in $FICHERO; do
  seg=`echo $linea | cut -d';' -f3`
  segSuma=$(($segSuma+$seg))
done

echo "El número de segundos totales de todos los corredores es $segSuma segundos"
