#!/bin/bash

admin="Hunter"

read -p "Enter your username: " username

if [[ "${username}" == "${admin}" ]]
then
    echo "You are the admin user! Welcome!"
else
    echo "You are NOT the admin user. Access Denied!"
fi
