#!/bin/bash
linea=`cat parking.txt | sort -t';' -nr -k4 | head -n1`
fecha=`echo $linea | cut -d';' -f3`
matricula=`echo $linea | cut -d';' -f1`
echo "El vehiculo con matricula $matricula ha pasado ms tiempo en la fecha $fecha"