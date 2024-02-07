#!bin/bash

i=0
a=0
b=0

if [ $1 -eq 0 ]
 then i=$((i+1))
 else
   if [ $1 -gt 0 ]
   then a=$((a+1))
   else
     if [ $1 -lt 0 ]
     then b=$((b+1))
     fi
   fi
fi

if [ $2 -eq 0 ]
 then i=$((i+1))
 else
   if [ $2 -gt 0 ]
   then a=$((a+1))
   else
     if [ $2 -lt 0 ]
     then b=$((b+1))
     fi
   fi
fi

if [ $3 -eq 0 ]
 then i=$((i+1))
 else
   if [ $3 -gt 0 ]
   then a=$((a+1))
   else
     if [ $3 -lt 0 ]
     then b=$((b+1))
     fi
   fi
fi

echo "Numeros iguais a 0: ($i)"
echo "Numeros negativos: ($b)"
echo "Numeros positivos:  ($a)"

