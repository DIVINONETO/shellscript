#!/bin/bash

for user in /home/*
do

    MP4COUNT=0  #CRIA VARIAVEL TIPO DE ARQUIVO COM CONTADOR ZERADO
    MP3COUNT=0
    JPGCOUNT=0
    PNGCOUNT=0
    OLDIFS=$IFS
    IFS=$'\n'
    for files in $(find $user -name '*.png' -o -name '*.jpg' -o -name '*.mp4' -o -name '*.mp3')  #FAZ O COMANDO PARA BUSCAR OS TIPOS DE ARQUIVOS
    do
        case $files in 
        
        *.mp4)
            MP4COUNT=$(expr $MP4COUNT + 1)  #FAZ A EXPRESSÃO DE SOMA 
            ;;
        *.mp3)
            MP3COUNT=$(expr $MP3COUNT + 1)
            ;;
        *.jpeg)
            JPGCOUNT=$(expr $JPGCOUNT + 1)
            ;;
        *.png)
            PNGCOUNT=$(expr $PNGCOUNT + 1)
        esac
    done

echo "Usuário: $(basename $user)"
echo "Arquivos MP4: $MP4COUNT"  #PRINTA NA TELA O RESULTADO DA EXPRESSÃO
echo "Arquivos MP3: $MP3COUNT"
echo "Arquivos JPG: $JPGCOUNT"
echo "Arquivos PNG: $PNGCOUNT"
echo
done

