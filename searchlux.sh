#!/bin/sh
#Ryan McAleaney 2019
#Requires Dmenu https://tools.suckless.org/dmenu/ & ifne https://joeyh.name/code/moreutils/ & radiolux chart downloader by danieljmc https://github.com/danieljmc/radiolux

YEAR=$(grep -Ew "[0-9][0-9][0-9][0-9]" output.txt | sed 's:[0-9][0-9]-[0-9][0-9]-::g' | sort -u | dmenu -l 30)
grep -e "$YEAR" output.txt | grep '[0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]' - | dmenu -l 30 | ifne grep -A 25 -f - output.txt
