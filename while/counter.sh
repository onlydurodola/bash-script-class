#!/bin/bash

echo "=== GYM REP COUNTER ==="

reps=1 #starts with the first rep
max_reps=5 #Only do 5 reps

while [[ $reps -le $max_reps ]] #While reps is less than or equal to 5
do
    echo " Doing rep number: $reps"
    ((reps++)) #Increase by 1 - VERY IMPORTANT
    sleep 1
done

echo " Workout Complete! Did $max_reps reps"

