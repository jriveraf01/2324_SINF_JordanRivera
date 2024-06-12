#!/bin/bash
cat parking.txt | cut -d';' -f1 | sort | uniq
read -p "Introduce la matrícula para saber sus minutos totales: " matricula
fichero=`grep -i "^$matricula" parking.txt`
if [ -z "$fichero" ]; then
    echo "La matrícula introducida nunca ha aparcado en el parking"
    exit 0
fi
minutosTotales=0
IFS=$'\n'
for linea in $fichero; do
    minutos=`echo "$linea" | cut -d';' -f4`
    minutosTotales=$(($minutosTotales + $minutos))
done
echo "El vehículo con matrícula $matricula ha estado aparcado $minutosTotales minutos"