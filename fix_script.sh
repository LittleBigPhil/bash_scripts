#!/bin/bash
# Does some perl magic I don't understand to get rid of all the voodoo from running the script command.
cat $1 | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b
