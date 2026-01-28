#!/bin/bash
echo "Enter a number:"
read num1

echo "Enter another number:"
read num2   
sum=$((num1 + num2))
div=$((num1 / num2))
quotient=$((num1 % num2))
sub=$((num1 - num2))

echo  "Addition: $sum"
echo  "Division: $div"
echo  "Quotient: $quotient"
echo  "Subtraction: $sub"

