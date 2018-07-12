#!/bin/bash

dir_destino="/home/cassio/Área de Trabalho/pb"

nome_arquivo_base="2017-08-29 -- 20:39:40"

ls "/home/cassio/Área de Trabalho/pb" | grep -vE $( cat ~/Área\ de\ Trabalho/pb/2017-08-29\ --\ 20\:39\:40 | cut -f 1 -d ' ' | tr '\n' '|' | sed 's/|$//g' ) | grep -v "$nome_arquivo_base" | sed -r "s@(.*)@rm \"$dir_destino\/\1\"@g" | sh  
