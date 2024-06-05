#!/bin/bash
#Mostrar los nombres de los productos con un número delante, para poder seleccionar dicho producto por su número
#y mostrar el mensaje "El precio del producto: X es: X €"
contador=1
FICHERO=`cat productos | grep -v '^#' | sort`
IFS=$'\n'

for linea in $FICHERO; do
    echo "$contador.$linea" >> conNumero
    contador=$(($contador + 1))
done

cat conNumero | cut -d';' -f1
read -p "Elige el producto para mostrar su precio: " numeroProducto
#Busco el nombre del producto elegido y su precio
productoABuscar=`grep "^$numeroProducto." conNumero | cut -d';' -f1 | cut -d'.' -f2`
precio=`grep "^$numeroProducto." conNumero | cut -d';' -f2`
echo "El precio del producto: $productoABuscar es: $precio"
#Borrar el fichero auxiliar usado
rm conNumero