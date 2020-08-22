#!/bin/bash
# Script to display sxhkd keybindings using rofi

cat ~/.config/sxhkd/sxhkdrc | awk '/^[a-z]/ && last {print $0,"\t",last} {last=""} /^#/{last=$0}' | column -t -s $'\t' | rofi -dmenu -i -no-show-icons -theme ~/.config/rofi/themes/distrotubeKeybinds.rasi