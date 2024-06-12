#!/bin/bash
#Nos dan el fichero saldo.txt, crear un menú que nos permita consultar el saldo dado un dni, también
#que nos permita ingresar y retirar dinero, modificándose el fichero según los movimientos
while true
do
 echo "Menu de Gestión Bancaria"
 echo "1.-Consulta por DNI"
 echo "2.-Retirar fondos"
 echo "3.-Salir"
 echo "Seleccione una opción:"
 read opcion
case $opcion in
    1)read -p "Introduzca el DNI a consultar: " dni
        linea=`grep "^$dni:" saldo.txt`
        if [ -z $linea ]; then
            echo "DNI no encontrado"
        else
            saldo=`echo $linea|cut -d':' -f2`
            echo "Su saldo es: $saldo €"
        fi
    ;;
    2)read -p "Introduzca el DNI a consultar: " dni
    linea=`grep "^$dni:" saldo.txt`
    if [ -z $linea ]; then
            echo "DNI no encontrado"
    else 
        read -p "Introduzca el dinero a retirar: " dinero
        saldo=`echo $linea|cut -d':' -f2`
        if [ "$saldo" -lt "$dinero" ]; then
            echo "No tiene suficiente saldo"
        else 
            saldo=$(($saldo - $dinero))
            lineaParcial=`echo $linea|cut -d':' -f1`
            grep -v "^$dni:" saldo.txt > aux
            echo "$lineaParcial:$saldo">>aux
        fi
    fi
    ;;
    3)exit 0;;
    *)clear
        echo "Opción incorrecta";;
esac
done