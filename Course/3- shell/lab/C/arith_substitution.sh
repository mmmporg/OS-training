#!/bin/sh

# Script de démonstration de la substitution arithmétique POSIX

echo "=== OPÉRATIONS ARITHMÉTIQUES DE BASE ==="
echo "Addition: $((2 + 3))"
echo "Division: $((2 / 3))"
echo "Multiplication: $((2 * 3))"
echo "Soustraction: $((2 - 3))"
echo "Modulo: $((2 % 3))"
echo ""

echo "=== AVEC VARIABLES ==="
a=10
b=5
echo "a=$a, b=$b"
echo "Addition: $((a + b))"
echo "Soustraction: $((a - b))"
echo "Multiplication: $((a * b))"
echo "Division: $((a / b))"
echo "Modulo: $((a % b))"
echo ""

echo "=== INCRÉMENTATION (POSIX) ==="
var=5
echo "var initial: $var"
var=$((var + 1))
echo "var après incrémentation: $var"
var=$((var - 1))
echo "var après décrémentation: $var"
echo ""

echo "=== COMPARAISON NUMÉRIQUE ==="
x=10
y=20
if [ "$x" -lt "$y" ]; then
    echo "$x est inférieur à $y"
fi