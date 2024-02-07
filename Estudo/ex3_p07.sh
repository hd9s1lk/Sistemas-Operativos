#!/bin/sh

max=0
min=0
texto=""

while [ "$texto" != "fim" ] && [ "texto" != "end" ]
 do
  read -p "Insira um valor: (para terminar escrever fim/end)" texto
  if [ $texto -gt $max ]
	then $max = $texto
	else $max = $max
  fi

  if [ $num -lt $min ]
	then $min = $texto
	else $min = $min
  fi

done

echo "Valor maximo: $max"
echo "Valor minimo $min"
