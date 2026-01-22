#!/bin/bash

admin="Hunter"

read -p "Enter your name: " username

#&& means AND - so both conditions must be true
#!= meants "not equal to"

if [[ "${username}" != "${admin}" ]] && [[ $EUID != 0 ]]
then
    echo "You are not the admin or root user, still be safe though!!"
    df -h
else
    echo "You have special privileges. Thread carefully!"
fi
