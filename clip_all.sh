#!/bin/bash
# Copies the text from all files in the directory to the windows clipboard.
# It uses tail, instead of cat, so the files start with a header including the name.
tail -n +1 * | clip.exe
