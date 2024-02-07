#!/bin/sh

numeros=0
i=0
FIM=""

while [ "$FIM" != "fim" ]
 do
  read -p "Escreva a palavra fim: " FIM
  i=$(($i+$FIM))
  numeros=$(($numeros + 1 ))
done

TOTAL=$(($numeros - 1 ))
media=$(( $i / $TOTAL ))
echo "A media e de: $media "
