#!/bin/bash
IFS=$'\n'
FICHERO=`cat corredores.txt| sort -nr -t';' -k3 corredores.txt`
for linea in $FICHERO; do
  nombre=`echo $linea | cut -d';' -f2 `
  tiempo=`echo $linea | cut -d';' -f3 ` 
done

echo "El ganador es $nombre con el tiempo $tiempo"
