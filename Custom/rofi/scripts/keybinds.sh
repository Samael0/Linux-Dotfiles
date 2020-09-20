#!/bin/bash
# Keybind Menu For Rofi

cat ~/.config/sxhkd/sxhkdrc | awk '/^[a-z]/ && last {print $0,"\t",last} {last=""} /^#/{last=$0}' | column -t -s $'\t' | rofi -dmenu -i -no-show-icons -width 1000 -theme /usr/share/rofi/themes/Pop-Dark.rasi
