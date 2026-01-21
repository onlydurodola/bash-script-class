#!/bin/bash

#Method 1: with function keyword

function greet_user() {
    echo "Hello there!"
}


#Method 2: without funtion keyword
greet_user2() {
    echo "Hello again!"
}

#Calling BOTH functions
greet_user #Output: Hello there!
greet_user2 #Output: Hello again!
