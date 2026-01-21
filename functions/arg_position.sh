#!/bin/bash

#Multiple arguments

describe_person() {
    echo "Name $1"
    echo "Age $2"
    echo "City $3"
    echo "All arguments: $@"
    echo "Number of args: $#"
    echo ""
}

describe_person "Hunter" 67 "Rivers"
describe_person "NFC" 190 "London"
describe_person "Esther" 560 "London" "Doctor"
