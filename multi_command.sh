#!/bin/bash
# Applies a set command of multiple arguments to every file in a directory
# Usage example: multi_command.sh ./ cat ">>log"
#   This logs the contents of every file within a directory.
ls "$1" | sed "s?.*?$2 & $3\&?" | bash
