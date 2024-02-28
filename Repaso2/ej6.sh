#!/bin/bash
cat parking.txt | cut -d';' -f1,2 | sort| uniq
echo "------------"
cat parking.txt | cut -d';' -f1,2,4 | sort -t';' -nr -k3
