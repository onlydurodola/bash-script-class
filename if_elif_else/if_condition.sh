#!/bin/bash

#Script to ask for a name and check if it was entered

read -p "What is your name?" name

if [[ -z ${name} ]]
then
    echo "Please enter your name"
fi

echo "Script is completed!"
