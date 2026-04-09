#!/bin/zsh
#

current=$(powerprofilesctl get)

# cycle through the three modes
if [[ $current == "power-saver" ]]; then
    powerprofilesctl set balanced
elif [[ $current == "balanced" ]]; then
    powerprofilesctl set performance
else
    powerprofilesctl set power-saver
fi

powerprofilesctl get > /tmp/battery-profile
