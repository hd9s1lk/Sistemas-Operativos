#!bin/bash

total=0

echo "Primeiro argumento passado: $1"
echo "Segundo argumento passado: $2"
echo "Terceiro argumento passado: $3"

total=$(( $1 + $2 + $3 ))

echo $total
