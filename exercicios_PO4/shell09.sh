#!/bin/sh

read -p "Valor para A: " A
read -p "Valor para B: " B
read -p "Valor para C: " C

if [ $A -eq $B ] && [ $A -eq $C ]
  then echo "Os numeros ($A) ($B) ($C) sao iguais"
  else echo "Nem todos os numeros ($A) ($B) ($C) sao iguais"
fi


