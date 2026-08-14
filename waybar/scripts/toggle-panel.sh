#!/bin/bash

if pgrep -f 'waybar.*panel.jsonc' > /dev/null; then
    pkill -f 'waybar.*panel.jsonc'
else
    waybar -c ~/.config/waybar/panel.jsonc &
fi