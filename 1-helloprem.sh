#!/bin/bash
a=12
b=6

echo "Sum: $((a + b))"
echo "Difference: $((a - b))"
echo "Product: $((a * b))"
echo "Quotient: $((a / b))"
echo "Remainder: $((a % b))"

if [ $a -gt $b ]; then
    echo "$a is greater than $b"
else
    echo "$a is not greater than $b"
fi
echo "Enter your name:"
read name
echo "Hello, $name!"

# This is a comment

echo "This is a simple shell script."

