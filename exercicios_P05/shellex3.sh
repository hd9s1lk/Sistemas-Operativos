#!/bin/sh

read -p "Insira uma letra: " A
read -p "Insira uma segunda letra: " B
read -p "Insira uma terceira letra: " C

case $A in
 [a-z])
  echo "1º Minuscula";;
 [A-Z])
  echo "1º Maiuscula";;
 *)
  echo "caracter nao e uma letra";;
esac

case $B in
 [a-z])
  echo "2º Minuscula";;
 [A-Z])
  echo "2º Maiuscula";;
  *)
  echo "caracter nao e uma letra";;
esac

case $C in
 [a-z])
  echo "3º Minuscula";;
 [A-Z])
  echo "3º Maiscula";;
  *)
  echo "caracter nao e uma letra";;
esac

