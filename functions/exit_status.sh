#!/bin/bash

#Checking if a file exists (returns success/failure)

file_exists() {
    if [[ -f "$1" ]]; then
        return 0 #Success - file exists
    else
        return 1 #Failure - file doesn't exist
    fi
}

#Using the function
echo "==== FILE CHECKER ===="
file_exists "/etc/passwd"

if [[  $? -eq 0 ]]; then
    echo "file exists"
else
    echo "file not found"
fi


