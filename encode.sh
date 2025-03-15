#!/bin/bash

# Check if a text file was provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <text-file>"
    exit 1
fi

# Store the input text file name
INPUT_FILE="$1"

# Check if the input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: File '$INPUT_FILE' not found."
    exit 1
fi

# Check if raw/ directory exists, if not create it
if [ ! -d "raw" ]; then
    echo "Creating output directory 'raw/'..."
    mkdir -p raw
fi

# Execute the txt2raw command
echo "Converting '$INPUT_FILE' to raw format..."
txt2raw "$INPUT_FILE"

# Get the output raw file name (same name with .raw extension)
RAW_FILE="${INPUT_FILE}.raw"

# Check if the raw file was created
if [ ! -f "$RAW_FILE" ]; then
    echo "Error: Raw file '$RAW_FILE' was not created."
    exit 1
fi

# Move the raw file to the raw/ directory
echo "Moving '$RAW_FILE' to raw/ directory..."
mv "$RAW_FILE" raw/

echo "Conversion complete. Raw file is now at: raw/$(basename "$RAW_FILE")"
