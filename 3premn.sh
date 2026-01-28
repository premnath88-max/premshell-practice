#!/bin/bash

echo "enter first number"
read num1

echo "enter second number"
read num2

sum=$((num1 + num2))
diff=$((num1 - num2))
Prod=$((num1 * num2))
quot=$((num1 / num2))

echo "Addition: $sum"
echo "Subtraction: $diff"
echo "Product: $Prod"
echo "Quotient: $quot"


