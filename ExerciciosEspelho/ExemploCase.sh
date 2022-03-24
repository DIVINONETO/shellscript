#!/bin/bash

case "$1" in
    [0-9])
        echo "O parâmetro digitado é um número"
        ;;
    [A-Z])
        echo "O parâmetro digitado é uma letra maiuscula"
        ;;
    [a-z])
        echo "O parâmetro digitado é uma letra minuscula"
        ;;
    *)
        echo "O paramêtro digitado é especial"
    esac