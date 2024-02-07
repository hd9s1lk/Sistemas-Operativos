#!/bin/bash

read -p "Insira o primeiro numero: " A
read -p "Insira o segundo numero: " B
read -p "Insira o terceiro numero: " C

if [ $A -eq $B ] && [ $B -eq $C ]
 then echo "Sao todos iguais"
 else echo "Nem todos sao iguais"
fi

echo $A
echo $B
echo $C
