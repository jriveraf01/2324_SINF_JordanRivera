#!/bin/bash

while true
do
 echo "Menu"
 echo "1.-Filtro por dorsal"
 echo "2.-Filtro por nombre"
 echo "3.-Filtro por localidad"
 echo "4.-Salir"
 echo "Seleccione una opción:"
 read opcion
case $opcion in
    1)read -p "Introduzca el dorsal: " dorsal
    linea=`grep -i "$dorsal" corredores.txt`
    if [ -z "$linea" ];then
      echo "No se ha encontrado ningún corredor con ese dorsal"
    else
      nombre=`echo $linea | cut -d';' -f2` 
      echo $nombre
    fi
    ;;
    2)read -p "Introduzca el nombre: " nombre
    linea=`grep -i "$nombre" corredores.txt`
     if [ -z "$linea" ];then
      echo "No se ha encontrado ningún corredor con ese nombre"
    else
      nombre=`echo $linea | cut -d';' -f2` 
      echo $nombre
    fi
    ;;
    3)read -p "Introduzca la localidad: " localidad
    linea=`grep -i "$localidad" corredores.txt`
     if [ -z "$linea" ];then
      echo "No se ha encontrado ningún corredor con esa localidad"
    else
      echo "$linea" >> localidad.txt
      cat localidad.txt | cut -d';' -f2
      rm localidad.txt
    fi
    ;;
    4)echo "Saliendo del menu..."
    exit 0
    ;;
    *)clear
        echo "Opción incorrecta";;
esac
done
