#!/bin/bash

echo "=== CLEANING FILES ==="
echo "Looking for files to organize"
echo ""

file_count=0
skip_count=0

#Check all files in Break and Continue
for file in ./*
do
    #Skip directories
    if [[ -d "$file" ]]; then
	echo "Skipping folder $(basename "$file")"
	((skip_count++))
	continue #Jump to the next file immediately
    fi

    #Skip system/hidden files - files that starts with .
    if [[ "$(basename "$file")" == .* ]]; then
	echo "Skipping hidden file: $(basename "$file")"
	((skip_count++))
	continue #Jump to the next file immediately
    fi

    #SKip files already in correct format
    if [[ "$file" == *.organized ]]; then
	echo "Already organized: $(basename "$file")"
	((skip_count++))
	continue
    fi

    #Process normal files
    echo "Organizing: $(basename "$file")"
    mv "$file" "${file}.organized"
    ((file_count++))
done
echo ""
echo "Summary:"
echo " - Organized: $file_count files"
echo " - Skipped : $skip_count items"
