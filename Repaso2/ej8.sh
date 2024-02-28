#!/bin/bash
read -p "Introduce la matricula" matriculaABuscar

grep "^$matriculaABuscar;" parking.txt

if [ -z "$matriculaABuscar" ]; then
  echo "La matricula insertada no existe"
  exit 0
fi

read -p "Introduce la fecha(dd/mm/yyy): " fechaABuscar

read -p "¿Cuántos minutos quieres añadir? " minutos

IFS=$'\n'

for linea in `cat parking.txt` ; do
  fecha=`echo $linea|cut -d';' -f3`
  matricula=`echo $linea|cut -d';' -f1`
  
  if [ "$matricula" = "$matriculaABuscar" ] && [ "$fecha" = "$fechaABuscar" ]; then
    duracion=`echo $linea|cut -d';' -f4`
    duracion=$(($duracion + $minutos))
    primeraParte=`echo $linea|cut -d';' -f1,2,3`
    echo "$primeraParte;$duracion" >> parkingNuevo.txt
  else 
    echo "$linea" >> parkingNuevo.txt
  fi
done
cat parkingNuevo.txt
rm parkingNuevo.txt
