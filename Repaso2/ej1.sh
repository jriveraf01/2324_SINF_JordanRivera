#!/bin/bash

FICHERO=`cat productos | grep -v "^#"`
IFS=$'\n'
contador=1
for linea in $FICHERO; do 
    echo"$contador.$linea" >> conNumero
    contador=$(($contador + 1))
done
cat conNumero | cut -d';' -f1

read -p "Elige el producto para mostar su precio" numeroProducto
productoAbuscar=`grep "^numeroProducto." conNumero | cut -d';' -f1| cut -d'.' -f2`
precio=`grep "^$numeroProducto." conNumero | cut -d';' -f2`
echo "El precio del producto $productoAbuscar es $precio"

rm conNumero