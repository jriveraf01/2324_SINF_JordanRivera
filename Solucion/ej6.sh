#!/bin/bash
#Mostrar los coches del parking ordenados por matrícula
cat parking.txt | cut -d';' -f1,2 | sort | uniq
echo "-------------------------"
#Mostrar los coches del parking ordenados por duración de estancia de mayor a menor
cat parking.txt | sort -t ';' -nr -k4