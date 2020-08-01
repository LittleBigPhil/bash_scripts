#!/bin/bash
# Automatically applies the fix_script script to the output of the script command
if [ "$#" -eq 1 ]
then
    temp_file=$(mktemp)
    script "$temp_file"
    "$(dirname "$0")"/fix_script.sh "$temp_file" > "$1"
    rm "$temp_file"
else
    echo "Please input an output file name."
fi
