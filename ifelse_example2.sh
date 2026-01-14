#!/bin/bash

if (( $EUID == 0 )); then
    echo "Please do not run this script as ROOT"
    echo "Root access can accidentally damage your system"
    exit 1
fi

