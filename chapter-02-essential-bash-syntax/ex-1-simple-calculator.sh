#!/bin/bash
echo "Enter two numbers: "
read num1 num2

echo "Choose operation: + - * /"
read operation

case $operation in
  +) result=$((num1 + num2)) ;;
  -) result=$((num1 - num2)) ;;
  \*) result=$((num1 * num2)) ;;
  /) result=$((num1 / num2)) ;;
  *) echo "Invalid operation" ;;
esac

echo "Result: $result"
