#!/bin/bash
temp_file=$(mktemp)
script "$temp_file"
"$(dirname "$0")"/fix_script.sh "$temp_file" > "$1"
rm "$temp_file"
