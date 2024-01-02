#!/bin/bash

# File to write
output_file="index.md"

# Write the header to the file
echo "# Slides masterlist" > "$output_file"

# Loop through each HTML file in the current directory
for file in *.html; do
    # Extract the filename without extension
    filename="${file%.*}"

    # Append the formatted line to the output file
    echo "- [$filename](https://oddfeed.github.io/slides/$file)" >> "$output_file"
done

