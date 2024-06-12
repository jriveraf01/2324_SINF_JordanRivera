#!/bin/bash

cat corredores.txt | cut -d';' -f1 | sort | uniq -d
