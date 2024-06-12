#!/bin/bash
#Tenemos un fichero con las máquinas de una fábrica mostrar todas las líneas del fichero y si
#la temperatura es mayor a 90 grados, que dicha línea se muestre en rojo. Solo debe mostrarse
#el nombre de la maquina, su temperatura y rpm. Eliminar también los comentarios

#echo -e "\033[0;32mEste texto será verde\033[0m"
#echo -e "\033[0;31mEste texto será rojo\033[0m"

IFS=$'\n'
FICHERO=`grep -v "^#" maquinas.txt`
for linea in $FICHERO; do
    temperatura=`echo $linea|cut -d':' -f3`
    nombre=`echo $linea|cut -d':' -f1`
    rpm=`echo $linea|cut -d':' -f4`
    if [ "$temperatura" -ge 90 ]; then
        echo -e "La máquina: $nombre tiene una temperatura de \033[0;31m$temperatura\033[0m grados y unas RPM de $rpm"
    else
    echo -e "La máquina: $nombre tiene una temperatura de \033[0;32m$temperatura\033[0m grados y unas RPM de $rpm"
    fi
done