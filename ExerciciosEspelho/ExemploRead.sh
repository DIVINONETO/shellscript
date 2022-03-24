#!/bin/bash

ARQALUNOS=/home/neto/cursos/shell_script/curso_shell_script/arquivos/alunos2.txt

echo -n "Digite o nome do aluno "
read ALUNO
echo ""
echo "O nome do aluno é: $ALUNO"
echo ""
echo "O nome completo do aluno é: $(grep $ALUNO $ARQALUNOS)"
