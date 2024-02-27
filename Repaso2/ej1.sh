#!/bin/bash

$fichero=productos

##$fichero=`grep -r "1."| cut -d f1`

producto=`grep -r "1." productos`

IFS=$'\n'

for linea