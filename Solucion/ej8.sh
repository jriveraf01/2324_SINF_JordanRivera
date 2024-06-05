#!/bin/bash
read -p "Introduce matrícula: " matriculaABuscar
buscar=`grep "^$matriculaABuscar;" parking.txt`
if [ -z "$buscar" ]; then
    echo "La matricula insertada no existe"
    exit 0
fi
read -p "Introduce fecha(dd/mm/yyyy): " fechaABuscar
read -p "¿Cuántos minutos quieres añadir?: " minutos
IFS=$'\n'
for linea in `cat parking.txt`; do
    fecha=`echo $linea | cut -d ';' -f 3`
    matricula=`echo $linea | cut -d ';' -f 1`
    if [ "$matricula" = "$matriculaABuscar" ] && [ "$fecha" = "$fechaABuscar" ]; then
        duracion=`echo $linea | cut -d ';' -f 4`
        duracion=$(($duracion+$minutos))
        primeraParte=`echo $linea | cut -d';' -f1,2,3`
        echo "$primeraParte;$duracion" >> parkingNuevo.txt
    else 
        echo $linea >> parkingNuevo.txt
    fi
done

cat parkingNuevo.txt