#!/bin/bash
while true; do
 echo "******Menu******"
 echo "1.-Codificar"
 echo "2.-Decodificar"
 echo "3.-Añadir nuevo caracter"
 echo "4.-Salir"
 read -p "Seleccione una opción: " opcion
case $opcion in
    1)
    read -p "Introduce el texto a codificar: " texto
    tamanio=`echo $texto | wc -c`
    tamanio=$(($tamanio -1))
    textoCodificado=""
    for ((i=1; i<=$tamanio; i++)); do
        caracter=`echo $texto|cut -c$i`
        caracterCodificado=`grep "$caracter" codificacion | cut -d':' -f2`
        textoCodificado="$textoCodificado $caracterCodificado"
    done
    echo "Texto codificado: $textoCodificado"
    ;;
    2)
    read -p "Introduce el texto a decodificar" texto
    textoDecodificado=""
    for caracter in `echo $texto`; do
        caracterDecodificado=`grep ":$caracter$" codificacion | cut -d':' -f1`
        textoDecodificado="$textoDecodificado $caracterDecodificado"
    done
    echo "Texto decodificado: $textoDecodificado"
    ;;
    3)
    read -p "¿Qué carácter quiere añadir a la codificacion?" caracter
    existe=`grep "$caracter:" codificacion`
    if [ -n "$existe" ]; then
        echo "El carácter ya existe"
        exit 1
    fi
    maximo=`cat codificacion|sort -nr -t':' -k1|head -n1|cut -d':' -f2`
    maximo=$(($maximo + 1))
    echo "$caracter:$maximo" >> codificacion
    ;;
    4)
    exit 0
    ;;
    *)
    echo "Opción incorrecta"
    exit 1
    ;;
esac
 done

 IFS=$'\n'
 FICHERO=`cat fichero`
 for  in $FICHERO; do
 
 done