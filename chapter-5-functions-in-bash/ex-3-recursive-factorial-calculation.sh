#!/bin/bash

factorial() {
   if [ $1 -le 1 ]; then
      echo 1
   else
      local temp=$(factorial $(($1 - 1)))
      echo $(($1 * $temp))
   fi
}

echo "Enter a number:"
read num
result=$(factorial $num)
echo "Factorial: $result"
