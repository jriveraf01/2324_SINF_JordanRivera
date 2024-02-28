#!/bin/bash
echo "*************Menu**************"
echo "1.Listado de productos"
echo "2.Tallas de un producto"
echo "3.Subir precio"
echo "4.Salir"
read -p "Seleccione una opcion" opcion
case $opcion in
  1)bash ej2.sh
   
  ;;
  2)bash ej3.sh
    
  ;;
  3)bash ej4.sh

  ;;
  4) clear
    exit 0;
  ;;
  *)echo "Opción incorrecta"
    exit 1;
esac
