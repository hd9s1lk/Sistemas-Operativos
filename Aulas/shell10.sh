#!/bin/sh

read -p "Coloque um digito: " ch

case $ch in
  [aeiou]*)
    echo "carater $char é uma vogal";;
  [a-z]*)
    echo "carater $char é consoante";; #aeuio excluidos devido ao 1º padrao
  [0-9]*)
    echo "carater $char é digito decimal";;
  [\+\-\/\*]*)
    echo "Operado";;
  *)
    echo "carater $char nao e' uma letra ou digito decimal"
esac
