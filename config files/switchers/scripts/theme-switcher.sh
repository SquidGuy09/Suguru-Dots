#!/usr/bin/env bash

THEME="${1,,}"
#DEFAULT=$(ls ~/Wallpapers/$THEME/ | head -n 1)


case "$THEME" in
   gruvbox)
	cp ~/.config/switchers/colorschemes/Gruvbox/kitty/colors.conf ~/.config/kitty/colors/custom

	cp ~/.config/switchers/colorschemes/Gruvbox/rofi/colors.rasi ~/.config/rofi/colors/

	cp ~/.config/switchers/colorschemes/Gruvbox/swaync/colors.css ~/.config/swaync/
	cp ~/.config/switchers/colorschemes/Gruvbox/swaync/style.css ~/.config/swaync/

	cp ~/.config/switchers/colorschemes/Gruvbox/waybar/colors.css ~/.config/waybar/
	cp ~/.config/switchers/colorschemes/Gruvbox/waybar/style.css ~/.config/waybar/

	awww img ~/Wallpapers/gruvbox/Vibing.png --transition-fps=60 --transition-pos=0.854,0.977 --transition-type=outer ;;


   gruvbox-noir)

	#change colors for kitty
   	cp ~/.config/switchers/colorschemes/Gruvbox-Noir/kitty/colors.conf ~/.config/kitty/colors/custom

	#change colors for rofi
	cp ~/.config/switchers/colorschemes/Gruvbox-Noir/rofi/colors.rasi ~/.config/rofi/colors/  

	#change colors and style for swaync
	cp ~/.config/switchers/colorschemes/Gruvbox-Noir/swaync/colors.css ~/.config/swaync/
	cp ~/.config/switchers/colorschemes/Gruvbox-Noir/swaync/style.css ~/.config/swaync/

	#change colors and style for waybar
	cp ~/.config/switchers/colorschemes/Gruvbox-Noir/waybar/colors.css ~/.config/waybar/
	cp ~/.config/switchers/colorschemes/Gruvbox-Noir/waybar/style.css ~/.config/waybar/

	awww img ~/Wallpapers/gruvbox-noir/SuguruGeto.png --transition-fps=60 --transition-pos=0.854,0.977 --transition-type=outer ;;


esac


pkill waybar
waybar &

pkill swaync
swaync &

# Kitty — signal all running instances to reload
kill -SIGUSR1 $(pidof kitty)

# Rofi — no daemon, reads config on launch, nothing to reload
#


