#!/usr/bin/env bash

LAYOUT="${1,,}"
case "$LAYOUT" in
  dwindle)
    hyprctl keyword general:layout dwindle
    notify-send "Layout Switched" "Layout switched to dwindle" ;;

  master)
    hyprctl keyword general:layout master 
    notify-send "Layout Switched" "Layout switched to master" ;;

   scrolling)
#    hyprctl keyword general:layout scroller
     notify-send "Failure" "Scrolling hasn't been implemented yet :(" ;;
esac
