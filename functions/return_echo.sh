#!/bin/bash

#Functions that return data by printing it

get_timestamp() {
    # This function returns the current time
    date "+%Y-%m-%d %H:%M:%S"
}

calculate_area() {
    local length=$1
    local width=$2
    local area=$((length * width))
    echo $area #This returns the value by printing/echoing it
}

#Capture function output
echo "==== CAPTURING FUNCTION OUTPUT ===="

# Store function output in a var
current_time=$(get_timestamp)
echo "Right now it is: $current_time"

# Use function output directly
echo "Log entry at $(get_timestamp)"

#Calculation
rect_area=$(calculate_area 10 6)
echo "Area of 10 and 6 rectangle: $rect_area"

# Direct Use
echo "Area of 4 and 5 rectangle: $(calculate_area 4 5)"

