#!/bin/bash

#Funtion that takes 1 argument ($1)

greet_person() {
    
    echo "Hello, $1! Nice to meet you!"
}

#Calling with different Arguments
greet_person "Alice"
greet_person "Elijah"
greet_person "Hunter"

