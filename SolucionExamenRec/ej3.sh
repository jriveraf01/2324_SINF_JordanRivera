#!/bin/bash
#Nos dan una dirección de correo en una cadena, comprobar que el nombre (antes de la @ es mayor o igual a 4), que lo que venga
#después de la @ hasta el punto sea mayor o igual a 5 caracteres y que después del punto vengan mayor o igual a 2 caracteres
correo="mig@gmai.c"
nombre=`echo "$correo" | cut -d'@' -f1|wc -c`
proveedor=`echo "$correo" | cut -d'@' -f2|cut -d'.' -f1|wc -c`
extension=`echo "$correo" | cut -d'.' -f2|wc -c`
if [ "$nombre" -lt 5 ]; then
    echo "El nombre debe ser mayor o igual a 4 caracteres"
fi
if [ "$proveedor" -lt 6 ]; then
    echo "El proveedor debe ser mayor o igual a 5 caracteres"
fi
if [ "$extension" -lt 3 ]; then
    echo "La extensión debe ser mayor o igual a 2 caracteres"
fi
