#!/bin/bash
#Mostrar el la matrícula del coche que ha estado más tiempo en el parking y en que fecha

linea=`cat parking.txt | sort -t ';' -r -n -k 4 | head -n 1`
fecha=`echo $linea | cut -d ';' -f 3`
matricula=`echo $linea | cut -d ';' -f 1`
echo "El vehículo con matrícula: $matricula ha pasado mas tiempo en la fecha $fecha"