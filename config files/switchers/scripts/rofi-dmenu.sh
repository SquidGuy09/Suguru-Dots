#!/usr/bin/env bash

SELECTED=$(echo -e " Themes\n Wallpapers\n Layout" | rofi -dmenu -theme ~/.config/rofi/style-2.rasi)


case "$SELECTED" in
" Themes")

	THEMES=$(ls ~/.config/switchers/colorschemes/)

	SELECTED1=$(echo "$THEMES" | rofi -dmenu -theme ~/.config/rofi/style-2.rasi)

	~/.config/switchers/scripts/theme-switcher.sh $SELECTED1
  ;;

" Wallpapers") 

THEME=$(grep "theme:" ~/.config/waybar/colors.css | sed 's/\/\* theme: //;s/ \*\///')

WALLPAPERS=$(ls ~/Wallpapers/$THEME/)

SELECTED2=$(echo "$WALLPAPERS" | rofi -dmenu -theme ~/.config/rofi/style-2.rasi)

awww img ~/Wallpapers/$THEME/$SELECTED2 --transition-fps=60 --transition-type=wipe
  ;;

" Layout")
	
CURRENT=$(hyprctl getoption general:layout | awk '/str:/ {print $2}')

CHOICE=$(echo -e "dwindle\nmaster\nscrolling" | rofi -dmenu -theme ~/.config/rofi/style-2.rasi -mesg "$CURRENT is selected")
~/.config/switchers/scripts/layout.sh "$CHOICE"

  ;;

*)
  ;;
esac
