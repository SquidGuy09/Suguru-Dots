#!/bin/zsh

# Colors (uses your terminal colors)
reset="\033[0m"
bold="\033[1m"

# Box drawing chars
tl="╭"; tr="╮"; bl="╰"; br="╯"; h="─"; v="│"

# Gather stats

cat ~/.config/fastfetch/logo.txt
echo ""

os=$(grep "^NAME" /etc/os-release | cut -d= -f2 | tr -d '"')
arch=$(uname -m)
host="Macbook Air"
shell="zsh $(zsh --version | awk '{print $2}')"
wm="Hyprland"
cpu=$(grep "model name" /proc/cpuinfo | head -1 | cut -d: -f2 | sed 's/^ //' | sed 's/(R)//g' | sed 's/(TM)//g' | awk '{print $1, $2, $3}')
mem_total=$(grep MemTotal /proc/meminfo | awk '{printf "%.2f", $2/1024/1024}')
mem_used=$(awk '/MemTotal/{t=$2} /MemAvailable/{a=$2} END{printf "%.2f", (t-a)/1024/1024}' /proc/meminfo)
disk=$(df -h / | awk 'NR==2{print $3"/"$2}')
battery_cap=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null || echo "N/A")
battery_status=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null || echo "N/A")

# Data rows: "Label" "Value"
rows=(
    "󰣇  OS"      "$os $arch"
    "  Host"    "$host"
    "  Shell"   "$shell"
    "  WM"      "$wm"
    "  CPU"     "$cpu"
    "  Memory"  "${mem_used}G / ${mem_total}G"
    "  Disk"    "$disk"
    "󰁽  Battery" "${battery_cap}% $battery_status"
)

# Box width
width=48
inner=$((width - 3))
col1=18  # label + icon column
col2=22  # value column

# Top border
echo -e "${tl}$(printf '%0.s'"$h" $(seq 1 $inner))${tr}"

# Rows
for ((i=1; i<${#rows[@]}; i+=2)); do
    label="${rows[$i]}"
    value="${rows[$((i+1))]}"
    # Pad label to col1 width
	printf "${v} ${bold}%-${col1}s${reset} ${v} %-${col2}s ${v}\n" "$label" "$value"
done

# Bottom border
echo -e "${bl}$(printf '%0.s'"$h" $(seq 1 $inner))${br}"

# Color palette bar
echo -e "  \e[38;2;55;52;60m██\e[38;2;85;80;95m██\e[38;2;105;100;115m██\e[38;2;130;125;140m██\e[38;2;155;152;163m██\e[38;2;185;183;193m██\e[0m"
