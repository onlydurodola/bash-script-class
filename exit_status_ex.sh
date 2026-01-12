#!/bin/bash

which git > /dev/null 2>&1

if [[ $? -eq 0 ]]; then
    echo "git is installed"
else
    echo "git is not installed"
fi



grew --version > /dev/null 2>&1

if [[ $? -eq 0 ]]; then
    echo "grew is installed"
else
    echo "grew doesn't exist here"
fi


