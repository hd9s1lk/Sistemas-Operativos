#!/bin/sh

P=$1
file=$2
i=0

ERRO="$0: erro . ficheiro nao existe ou nao foi encontrado"
USAGE="Instrucao: $0 \"ficheiro\""

if [ -f $file ]
 then
  cat $file | grep $1 $2
  i=$((i+1))
 else
  i=i
  echo $ERRO 1>&2
  echo $USAGE 1>&2
fi

echo "$i $1 neste ficheiro"
