#!bin/sh

read -p "Digite um primeiro valor: " a
read -p "Digite um segundo valor: " b
read -p "Qual a operacao que deseja [+/-/x/ / ]: " op

case $op in
	+) sum=$(($a + $b))
	echo "A soma e de $sum ";;
        -) dif=$(($a-$b))
	echo "A subtracao e de $dif";;
	x) multi=$(($a * $b))
	echo "A multiplicacao e de $multi";;
        /) div=$(($a / $b))
	echo "A divisao e de $div";;
        *) echo "Digite um valor valido"
 esac
