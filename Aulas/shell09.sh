#!/bin/sh

read -p "Coloque um valor: " ch

case $ch in
  a) echo "carater a";;
  +) echo "carater +";;
  [0-9]) echo "Numero de 0 a 9";;
  [a-z]) echo "Letra de b a z";;
esac


