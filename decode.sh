#!/bin/bash

# Check if a raw file was provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <raw-file>"
    exit 1
fi

# Store the input raw file name
INPUT_FILE="$1"

# Check if the input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: File '$INPUT_FILE' not found."
    exit 1
fi

# Check if src/ directory exists, if not create it
if [ ! -d "src" ]; then
    echo "Creating source directory 'src/'..."
    mkdir -p src
fi

# Execute the raw2txt command
echo "Converting '$INPUT_FILE' to text format..."
raw2txt "$INPUT_FILE"

# Get the output text file name (same name with .txt extension)
# Note: raw2txt generates a file with .txt extension by default
TXT_FILE="${INPUT_FILE%.raw}.txt"

# Check if the txt file was created
if [ ! -f "$TXT_FILE" ]; then
    echo "Error: Text file '$TXT_FILE' was not created."
    exit 1
fi

# Move the txt file to the src/ directory and rename to .free42 extension
BASE_NAME=$(basename "$TXT_FILE" .txt)
echo "Moving '$TXT_FILE' to src/ directory as '$BASE_NAME.free42'..."
mv "$TXT_FILE" "src/$BASE_NAME.free42"

echo "Conversion complete. Text file is now at: src/$BASE_NAME.free42"
