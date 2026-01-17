#!/bin/bash

echo "=== FIND THE HIDDEN TREASURE ==="
echo " Searching coordinates on a 5x5 grid..."
echo ""

treasure_x=3
treasure_y=2
found=false

#Outer loop: x coordinates (rows)

for  (( x=1; x<=5; x++))
do
    echo "Searching row $x"

    for  (( y=1; y<=5; y++ ))
    do
	echo -n "  Checking ($x,$y)..."
	sleep 0.5

	#Did we find it?
	if [[ $x -eq $treasure_x ]] && [[ $y -eq $treasure_y ]]; then
	    echo " TREASURE FOUND!!!"
	    found=true

	    break
	    #break 2 

	else
	    echo "Empty!"	
	fi
    done

    echo ""

    if [[ $found == true ]]; then
	echo "Found treasure but loop continues..."
    fi

done

echo ""

if [[ $found == true ]]; then
    echo "Search completed - Treasure recovered!"
else
    echo "Search completed - No treasure found"
fi

 	


