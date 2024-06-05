#!/bin/bash
#Listado de Productos en almacén 1 y en almacén 2
echo "Productos en Almacén 1: "
cat almacen1 | cut -d";" -f1|sort -u
echo "Productos en Almacén 2: "
cat almacen2 | cut -d";" -f1|sort -u