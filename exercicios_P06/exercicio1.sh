#!/bin/sh

total=0
textoT=0
TEXTO=""

while [ "$TEXTO" != "fim" ]
do
  read -p "Escreva a palavra fim" TEXTO
  total=$(( $total + $TEXTO ))
  textoT=$(( $textoT + 1 ))
done
media=$(( $total / $textoT ))
echo "A media e de $media"


CASE
