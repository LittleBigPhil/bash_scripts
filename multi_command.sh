#!/bin/bash
ls "$1" | sed "s?.*?$2 & $3\&?" | bash
