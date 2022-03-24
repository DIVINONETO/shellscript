#!/bin/bash

echo ""
echo ====================== SCRIPT BUSCA ALUNO ======================
echo ""
echo ""


ARQALUNOS=/home/neto/cursos/shell_script/curso_shell_script/arquivos/alunos2.txt

ALUNOCOMPLETO1=$(grep "$1" $ARQALUNOS)
ALUNOCOMPLETO2=$(grep "$2" $ARQALUNOS)


echo "O nome completo do primeiro aluno é: $ALUNOCOMPLETO1"
echo ""
echo "O nome do completo do segundo aluno é: $ALUNOCOMPLETO2"


echo ""