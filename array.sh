#!/bin/bash

fruits=("apple" "banana" "carrot" "date" "eggplant")

#This would show all fruits
echo "This are currently present ${fruits[@]}"

#This would print out the second fruit
echo "Do you like ${fruits[1]}?"

#This would print from the second to the forth
echo "I like ${fruits[@]:1:3}"

#Prints from the forth to the end
echo "${fruits[@]:3}"

