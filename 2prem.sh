#!/bin/bash

echo "Hello, Prem how are you!"

echo " I am fine"


echo "Enter a number:"
read num

if [ "$num" -gt 50 ]; then
    echo "The number is greater than 50"

    
else
    echo "The number is not greater than 50"
fi

echo "enter first number"
read num1

echo "enter second number"
read num2

sum=$((num1 + num2))
diff=$((num1 - num2))
Prod=$((num1 * num2))
quot=$((num1 / num2))




