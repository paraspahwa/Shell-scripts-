#!/bin/bash
# Simple interactive calculator

echo "Interactive Calculator"
echo "----------------------"

echo -n "Enter the first number: "
read num1

echo -n "Enter the second number: "
read num2

echo "Choose an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read choice

case $choice in
    1) result=$((num1 + num2));;
    2) result=$((num1 - num2));;
    3) result=$((num1 * num2));;
    4) result=$(awk "BEGIN {print $num1 / $num2}");;
    *) echo "Invalid choice"; exit 1;;
esac

echo "Result: $result"
