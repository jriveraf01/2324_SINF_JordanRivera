#!/bin/bash
echo "Productos Almacen 1" 
cat almacen1 | cut -d';' -f1 | sort | uniq #o también sort -u
echo "Productos Almacen 2" 
cat almacen2 | cut -d';' -f1 | sort | uniq #o también sort -u