#!/bin/bash

clear
read -p "Informe o Limite de Processo: " MAXIMO

while [ $(ps aux | wc -l) -le $MAXIMO ]
do
    echo "Tudo OK"
    echo "O número de processo atuais é: $(ps aux | wc -l)"
    sleep 3
done

echo "Limite de Processos Excedido"
echo "Por favor verifique o sistema"

