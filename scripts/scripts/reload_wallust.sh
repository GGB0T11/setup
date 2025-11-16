#!/bin/bash
set -euo pipefail

wallpaper="${1:-}"
backend="${2:-wal}"

if [[ -z "$wallpaper" || ! -f "$wallpaper" ]]; then
  echo "Usage: $0 /path/to/wallpaper"
  exit 1
fi

wallust run "$wallpaper" --backend "$backend"

killall -SIGUSR1 kitty 2>/dev/null || true
pkill -SIGUSR2 waybar 2>/dev/null || true
killall -USR1 cava 2>/dev/null || true

ln -sf "$wallpaper" "$HOME/.config/hypr/current_wallpaper"
