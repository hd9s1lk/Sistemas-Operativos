#!/bin/sh

file=$1
i=0
LETRA="#"


ERRO="$0: erro - ficheiro nao existe ou nao foi indicado"
USAGE="Instrucao: $0"

if [ $# -gt 0 ] && [ -f $file ]
 then
     char=$(cat $file | cut -c 1 $file )
     if [ "$char" -eq "#" ]
      then i=$((i+1))
      else i=$i
     fi
 else
  echo $ERRO 1>$2
  echo $USAGE 1>$2
fi

echo "$i linhas comecam com #"
