#!/usr/bin/env bash

#        d8888 888     888 88888888888 .d88888b.
#       d88888 888     888     888    d88P" "Y88b
#      d88P888 888     888     888    888     888
#     d88P 888 888     888     888    888     888
#    d88P  888 888     888     888    888     888
#   d88P   888 888     888     888    888     888 888888
#  d8888888888 Y88b. .d88P     888    Y88b. .d88P
# d88P     888  "Y88888P"      888     "Y88888P"
#
#  .d8888b. 88888888888     d8888 8888888b. 88888888888
# d88P  Y88b    888        d88888 888   Y88b    888
# Y88b.         888       d88P888 888    888    888
#  "Y888b.      888      d88P 888 888   d88P    888
#     "Y88b.    888     d88P  888 8888888P"     888
#       "888    888    d88P   888 888 T88b      888
# Y88b  d88P    888   d8888888888 888  T88b     888
#  "Y8888P"     888  d88P     888 888   T88b    888


# Feh wallpapers
if [ -d "/mnt/Data/wallpapers" ]; then
    dir="/mnt/Data/wallpapers/*"
else
    dir="$HOME/Pictures/*"
fi
feh --no-fehbg --randomize --bg-scale $dir

# Sxhkd keybindings
pkill sxhkd
sxhkd &

# Clipman clipboard manager
pkill clipman
xfce4-clipman &

# Dunst notifications
"$HOME/.config/dunst/launch_dunst.sh" &

# Compton compositor
pkill -x compton
compton -b \
        --xrender-sync \
        --xrender-sync-fence \
        --config "$HOME/.config/compton/compton.conf" &

# Polybar
pkill -x polybar
polybar bar1 &
