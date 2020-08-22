#!/bin/bash

cmd="\grep -A 1 description ""$HOME""/.config/sxhkd/sxhkdrc | sed -e s/--/\ /g"

cmd="$cmd -e s/description:\ //gI" && echo -e "$(eval "$cmd")" | rofi -dmenu -i -no-show-icons -width 1000 -theme ~/.config/rofi/themes/distrotubeKeybinds.rasi

echo -e "$(eval "$cmd")"