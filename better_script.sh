#!/bin/bash
temp_file=$(mktemp)
script "$temp_file"
./fix_script.sh "$temp_file" > $1
rm "$temp_file"
