#!/bin/sh

read -p "Insira um numero: " num

fact=1

while [ $num -gt 1 ]
do
  fact=$((fact*num))
  num=$((num-1))
done

echo "Valor final: $fact"
