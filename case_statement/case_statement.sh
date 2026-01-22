#!/bin/bash

read -p "Enter the name of your car brand: " car

case $car in
    Tesla)
        #Runs if car variable is exaclty Tesla
	echo -n "${car}'s car factory is in the USA."
	# -n means no newline - next echo continues on the smae line
	echo " Na Elon Musk get am"
	;;
    
    BMW | Mercedes | Audi | Porsche)
        #Runs if $car matches any of these four patterns
        echo -n "${car}'s factory is in Germany"
	echo " Engineering BABA!"
	;;

    Toyota | Mazda | Mitsubishi | Subaru )
	##Runs if $car matches any of these four patterns
	echo -n "${car}'s factory is in Japan"
        echo " Engineering MAMA!"
        ;;

    *) 
        #This is the DEFAULT cas - runs for all other brand
	echo -n "${car}'s factory is unknown, I don't know this brand"
	echo " You can educate me"
esac #End of case statement

echo ""
echo "You are a curious being!"

