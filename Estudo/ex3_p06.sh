#!/bin/sh

i=0
n=0

case $1 in
	[a-z])
	echo "caracter e minusculo" i=$((i+1));;
	[A-Z])
	echo "caracter e maiusculo" n=$((n+1));;
	*)
	echo "caracter invalido";;
esac

case $2 in
	[a-z])
	echo "caracter e minusculo" i=$((i+1));;
	[A-Z])
	echo "caracter e maiusculo" n=$((n+1));;
	*)
	echo "caracter invalido"
esac

echo "Foram passados $i letras minusculas"
