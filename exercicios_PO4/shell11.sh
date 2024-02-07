#!bin/bash

i=0

if [ $1 -eq 0 ]
 then i=$((i+1))
 else i=$i
fi

if [ $2 -eq 0 ]
 then i=$((i+1))
 else i=$i
fi

if [ $3 -eq 0 ]
 then i=$((i+1))
 else i=$i
fi

echo "Qtd de 0's: ($i)"



