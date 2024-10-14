#!/bin/bash

add() {
   echo $(($1 + $2))
}

subtract() {
   echo $(($1 - $2))
}

multiply() {
   echo $(($1 * $2))
}

divide() {
   if [ $2 -ne 0 ]; then
      echo $(($1 / $2))
   else
      echo "Cannot divide by zero!"
   fi
}

main() {
   echo "Enter two numbers:"
   read num1 num2
   echo "Addition: $(add $num1 $num2)"
   echo "Subtraction: $(subtract $num1 $num2)"
   echo "Multiplication: $(multiply $num1 $num2)"
   echo "Division: $(divide $num1 $num2)"
}

main
