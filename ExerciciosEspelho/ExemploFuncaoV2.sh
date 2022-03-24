#!/bin/bash

ler () {
    read -p "Informe o nome: " NOME
    read -p "Informe o sobrenome: " SOBRENOME
}

ler
echo "O return code da função é $?"
echo 
echo "Meu nome é:  $NOME $SOBRENOME"