#!/bin/bash -x

read -p "Enter value of x: " x
read -p "Enter value of y: " y
Z= expr $x + $y

echo $z
