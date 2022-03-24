#!/bin/bash

HORAATUAL=$(date +%H)

if [ $HORAATUAL -ge 06 -a $HORAATUAL -lt 12 ]
then
    echo "BOM DIA"
elif [ $HORAATUAL -ge 12 -a $HORAATUAL -lt 18 ]
then
    echo "BOA TARDE"
else 
    echo "BOA NOITE"
fi

echo "A HORA ATUAL É $(date +%H:%M:%S)"