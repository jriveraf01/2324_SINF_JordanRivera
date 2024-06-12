#!/bin/bash
if [ -d prueba ]; then
    echo "El directorio prueba ya existe, se borrará"
    rm -r prueba
fi
#Si el directorio existía se borro en las líneas anteriores
mkdir prueba
echo "Creado por $0" > prueba/prueba.txt
