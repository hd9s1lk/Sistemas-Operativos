#!bin/sh

read -p "Insira a operacao que deseja fazer: " OP
read -p "1ºNumero: " A
read -p "2ºNumero: " B

case $OP in
	+) sum=$(($A + $B))
	echo "$sum";;
	-) dif=$(($A - $B))
	echo "$dif";;
	x) multi=$(($A * $B))
	echo "$multi";;
	/) div=$(($A / $B))
	echo "$div";;
	*)
	echo "caracter $op invalido"
esac
