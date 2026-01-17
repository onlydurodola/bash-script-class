#!/bin/bash

echo "=== FIND THE TREASURE GAME ==="
echo "Searching rooms for treasure chest..."
echo ""

rooms=("entryway" "kitchen" "library" "treasure_room" "celar" )

treasure_found=false
rooms_searched=0

for room in "${rooms[@]}"
do 
    ((rooms_searched++))
    echo "Searching the $room"
    sleep 1

    if [[ "$room" == "treasure_room" ]]; then
	echo "FOUND THE TREASURE CHEST in the $room"
	treasure_found=true
	break #STOP looking 
    fi

    echo "No treasure here..."
    echo ""
done

echo ""
echo "Search Ended"
echo "  Searched $rooms_searched rooms"
echo "  Treasure was found:  $treasure_found"
