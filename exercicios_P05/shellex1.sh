#!bin/sh

file=$1
i=0

ERRO="$0: erro  - ficheiro nao existe ou nao foi iniciado"
USAGE="Instrucao: $0 \"ficheiro\""

if [ -f $file ]
 then
 char=$(cat $file | cut -c1-1 $file )

   if [ $char -eq "#" ]
    then
     i=$((i+1))
    else
     i=i
   fi

 else
  echo $ERRO 1>$2
  echo $USAGE 1>$2
fi

echo "$i linhas comecam com # "

