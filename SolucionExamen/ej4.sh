#!/bin/bash
cat pedidos | grep -v '#' |  sort -nr -t';' -k4 | cut -d';' -f1