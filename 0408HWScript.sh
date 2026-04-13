#!/bin/bash

## What is the technical term for the code on Line 1

# Answer: The technical term is called a 'shebang'

## What does it accomplish

# Answer: The 'shebang' informs the OS of which program should run the script 

# ----------------------------
# Simple File Processing Script
# ----------------------------

##Explain lines 18 - 20. What are they and where are they used later in the script?

# Answer: Lines 18 - 20 are called 'variable assignments' For identifying input file, output directory and output file. They are used for processing the data in the respective paths.
INPUT_FILE="input/fruits.txt"
OUTPUT_DIR="output"
OUTPUT_FILE="$OUTPUT_DIR/fruits_processed.txt"

mkdir -p "$OUTPUT_DIR"



if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file not found!"
    exit 1
fi

echo "Processing file..."

# 
while IFS= read -r line
do
    
    processed_line="PROCESSED: $(echo "$line" | tr '[:lower:]' '[:upper:]')"

    
    echo "$processed_line" >> "$OUTPUT_FILE"

done < "$INPUT_FILE"

echo "Done!"
echo "Output written to: $OUTPUT_FILE"
