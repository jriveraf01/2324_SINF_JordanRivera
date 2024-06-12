#!/bin/bash
#Nos dan el fichero log.txt con los errores y mensajes de un sistema basado en GNU/Linux. Buscar los errores de la IP 192.160.1.100
#(guardarla en una variable), dicho error está antes de la palabra from (Entre : y ;) en la misma línea de la IP. Mostrar el mensaje: 
#“El día X hubo el error X”
ip="192.160.1.100"
IFS=$'\n'
FICHERO=`grep "$ip" log.txt`
for linea in $FICHERO; do
    dia=`grep log.txt | cut -d'' f1` 
    error=`grep log.txt | cut -d':' -f4 | cut -d';' -f1`

    echo "El día $dia hubo el error $error"
done