#!/usr/local/bin/bash

# qutebrowser history file.
qute_history="$HOME/.config/qutebrowser/bookmarks/urls"

# Calculate window position.
center() {
    local cord_x=$((($1 / 2 ) - ($3 / 2)))
    local cord_y=$(($2 / 3))
    local cord_z=$3
    echo "-x $cord_x -y $cord_y -z $cord_z" 
}   

# Set screen and window parameters.
screen_x=1920
screen_y=1080
win_size=750

# Get the window position.
position=$(center "$screen_x" "$screen_y" "$win_size")

# Use dmenu to select a bookmark URL.
selection="$(dmenu -i -p ">" $position -fn "14" -bw "3" -nb "#355535" -sb "#928374" -sf "#020202" -l "9" < "$qute_history" |\
    tr ' ' "\n" | grep "[^S |^https]")"

# Open the selected URL in qutebrowser.
if [[ -n $selection ]]; then
    qutebrowser "$selection"
fi
