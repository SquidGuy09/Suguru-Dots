#!/bin/bash

pkill waybar
pkill swaync
waybar &
swaync &

powerprofilesctl get > /tmp/battery-profile
