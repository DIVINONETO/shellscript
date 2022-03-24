#!/bin/bash


for i in /etc/passwd
do
    if [ -f $i ]
    then
        echo "Verificando arquivo $i"
        LINHAS=$(cat $i | wc -l)
        echo "O arquivo $i tem $LINHAS linhas"
    else 
        "Arquivo Inválido"
    fi
done