#!/bin/sh

file=$1
palavra=$2

ERRO="$0: erro- ficheiro nao existe"
USAGE="Instrucao: $0 "

if [ $# -gt 0 ] && [ -f $file ]
 then
  vezes=$(grep -o $2 $1| wc -l)
  echo "A palavra $2 apareceu $vezes no ficheiro $1"
 else
  echo $ERRO 1>&2
  echo $USAGE 1>&2
fi
