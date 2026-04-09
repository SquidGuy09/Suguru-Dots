# Suguru Dots 🦑
Smooth Hyprland rice with Suguru Geto wallpaper.

<img width="1440" height="900" alt="2026-04-09-133248_hyprshot" src="https://github.com/user-attachments/assets/a3bbc6fc-4b8e-4350-ac17-dfe84e468bd7" />

## Components
- **WM:** Hyprland
- **Bar:** Waybar
- **Terminal:** Kitty
- **Launcher:** Rofi
- **Notifications:** Swaync
- **Fetch:** Fastfetch
- **Shell:** Zsh + Oh-My-Zsh + PowerLevel10k
## Dependencies
- **Wallpaper Daemon:** swww
- **Screenshot Tool:** hyprshot
- **Battery Profiles:** power-profiles-daemon
- **Audio Visualizer:** cava
- **Package Manager:** yay
  

## Roadmap
- ✅ Smooth waybar
- ✅ Kitty with Pywal themes based on wallpaper
- ✅ Rofi App Launcher
- ✅ Notification Center
- ✅ Cava in Waybar -- (check the config.jsonc for waybar to turn it on)
- ✅ Awesome Fastfetch
- ❌ Theme Switcher
- ❌ Showcase
- ❌ Customized Neovim
- ❌ Custom Powermenu
- ❌ Themed Yazi

## Rescources I used:
- Waybar inspiration: https://github.com/superisuer/dotfiles/blob/main/.config/waybar/style.css
- Terminal Font: https://github.com/wylu1037/google-sans-code-nerd-font?tab=readme-ov-file
- Rofi App launcher: https://github.com/adi1090x/rofi/blob/master/previews/launchers/type-1/2.png
- SwayNC Config: https://github.com/zDyant/HyprNova This one was heavily modified, but props to zDyant for creating peak.
- Waybar/Rofi/SwayNC Font: CascadiaMono Nerd Font
- Wallpaper: https://wallhaven.cc/w/g7p8gl
- PowerLevel10k: https://github.com/romkatv/powerlevel10k
- Oh-My-Zsh: https://ohmyz.sh/

## Installation:

1. Install dependencies:
       ```sudo pacman -S --needed swww hyprshot power-profiles-daemon-git cava```
   
  1.1. Install and Setup yay Package Manager: (Arch)
       ```sudo pacman -S --needed base-devel git
          git clone https://aur.archlinux.org/yay.git```
         Navigate to the install location:
       ```cd ~/.config/yay/```
         Build yay:
       ```makepkg -si```

2. Clone the repo:
```bash
   git clone https://github.com/SquidGuy09/Suguru-Dots.git ~/dotfiles
```
3. Copy files in the ```config files``` folder to ~/.config/

  3.1. Copy Wallpapers folder into home directory.

4. Run ```swww img ~/Wallpapers/geto1.png``` to set the wallpaper.

5. 
