#!/bin/bash

read -p "Informe o valor inicial " INICIO
read -p "Informe o valor final " FINAL

for i in $(seq $INICIO $FINAL)
do
    echo "O valor é $i"
done