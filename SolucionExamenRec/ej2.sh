#!/bin/bash
#Nos dan el fichero log.txt con los errores y mensajes de un sistema basado en GNU/Linux
#Buscar los errores de la IP 192.160.1.100, dicho error está antes de la palabra from(Entre : y ;) en la misma línea de la IP
#Mostrar la fecha y el mensaje producido
ip="192.168.1.100"
IFS=$'\n'
FICHERO=`grep "$ip" log.txt`
for linea in $FICHERO; do
    fecha=`echo $linea|cut -d' ' -f1`
    error=`echo $linea|cut -d':' -f4 | cut -d';' -f1`
    echo "El día: $fecha hubo el error: $error"
done