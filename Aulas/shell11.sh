#!/bin/sh

file=$1                                    #ficheiro igual ao primeiro argumento

ERRO="$0: erro - ficheiro nao existe ou nao foi indicado"
USAGE="Instrucao: $0 \"ficheiro\""
                                       #verificar se foi indicado um argumento e
if [ $# -gt 0 ] && [ -f $file ]                   #se existe ficheiro (man test)
 then                                           
  echo "ficheiro: $file"                                        #apresentar menu
  echo "m - mostrar conteudo"
  echo "p - contar palavras"
  echo "l - contar linhas"
  echo -n "Opcao: "

  read opcao                                                   #leitura da opcao

  case $opcao in                                               #selecionar opcoo
    m) cat $file;;                               #apresntar conteudo do ficheiro
    p) echo "O ficheiro tem $(cat $file | wc -w) palavras";; #numero de palavras
    l) lines=$(cat $file | wc -l)                      #obter o numero de linhas
       echo "O ficheiro tem $lines linhas";;
    *) echo Opcao invalida;;                               #;; nao e' necessario
  esac
 else
  echo $ERRO 1>&2                                              #mensagem de erro
  echo $USAGE 1>&2                                            #mensagem de ajuda
fi


