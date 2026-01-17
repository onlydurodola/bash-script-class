#!/bin/bash

string1=apple
string2=apple
string3=banana

# ==: string equality
if [[ "$string1" == "$string2" ]]; then
    echo "$string1 equals $string2"
fi

# != : string inequality
if [[ "$string2" != "$string3" ]]; then
    echo "$string2 is different from $string3"
fi

#lexicographic comparison
if [[ "ant" < "apple" ]]; then
    echo "ant comes before apple"
fi

if [[ "zebra" > "antelope" ]]; then
    echo "Interesting zebra comes before antelope"
fi

#pattern matching with == 
filename="docs.txt"
if [[ "$filename" == *.txt ]]; then
    echo "$filename is a txt file"
else
    echo "I don't know o!"
fi

filename="docs.sh"
if [[ "$filename" == *.txt ]]; then
    echo "$filename is a txt file"
else
    echo "I don't know o!"
fi
