#!/bin/bash

read -p "Informe o valor 1: " VALOR1
read -p "Informe o valor 2: " VALOR2

if [ ! $VALOR1 ] || [ ! $VALOR2 ]
then
    echo "VALOR NÃO PODE SER NULO"
    exit 1
fi

echo "Escolha uma operação"

echo "1 = Soma"
echo "2 = Subtração"
echo "3 = Multiplicação"
echo "4 = Divisão"
echo "Q = Sair"
echo
read -p "Opção:" OPCAO
echo

case $OPCAO in

1) 
    OPER="+"
    ;;
2)
    OPER="-"
    ;;
3)  
    OPER="*"
    ;;
4) 
    OPER="/"
    ;;

[qQ])
    echo "SAINDO"
    exit 1
    ;;
esac

echo "O resultado dos valores $VALOR1 $OPER $VALOR2 = $(expr $VALOR1 "$OPER" $VALOR2)"
