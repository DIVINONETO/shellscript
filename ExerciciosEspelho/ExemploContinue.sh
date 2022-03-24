#!/bin/bash

read -p "Digite o nome do(a) melhor aluno(a) " MELHOR

for i in $(cat ../arquivos/alunos3.txt)
do
    if [ $i = $MELHOR  ]
    then
        echo "O melhor aluno(a) é $i"
        continue
    fi
    echo "Aluno(a): $i"
done
