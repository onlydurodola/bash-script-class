#!/bin/bash
file="deep.txt"
dir="filing"


# -a/-e: file exists
if [[ -e "$file" ]]; then
    echo "$file exists"
fi

#-f: checks if a regular file and not a directory/symlink
if [[ -f "$file" ]]; then
    echo "$file is a regular file"
fi

#-d" Directory
if [[ -d "$file" ]]; then
    echo "$file is a directory"
else
    echo "Not a directory"
fi

# -s: File exists AND is not empty
if [[ -s "$file" ]]; then
    echo "$file exists and has content"
else
    "something is wrong with $file"
fi

#-h/-L: Symbolic link
if [[ -h link_to_deep ]]; then
    echo "link_to_deep is a sym link"
fi
