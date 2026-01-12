#!/bin/bash

#-z: String is empty (Zero length)
empty=""
if [[ -z "$empty" ]]; then
    echo "The string is empty"
else
    echo "The string is non-zero"
fi

# -n: String is NOT empty
name="Hunter"
if [[ -n "$name" ]]; then
    echo "The string has a value of $name"
else
    echo "The string is empty"
fi

# -v: Checks if set or not
app=""

if [[ -v "$app" ]]; then
    echo "Variable has an empty string"
fi

if [[ -v "$unset" ]]; then
    echo "This will not work"
else
    echo "I guess it works now"
fi
