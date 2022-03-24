#!/bin/bash

TIME=5

if [ $# -eq 0 ]
then
    echo "Informe um processo"
    echo "./ExemploMonitoraProcesso.sh <processo>"
    exit 1
fi

while true
do
    if ps aux | grep $1 | grep -v grep | grep -v $0 > /dev/null
    then
        sleep $TIME
    else
        echo "O processo $1 não está em execução"
        sleep $TIME
    fi
done


