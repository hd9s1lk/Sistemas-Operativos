#!/bin/sh


if [ $1 -eq 0 ]
then echo "O argumento ($1) e igual a 0"
fi

if [ $1 -gt 1 ]
 then echo "O argumento ($1) e positivo"
fi

if [ $1 -lt 0 ]
 then echo "O argumento ($1) e negativo"
fi
