#!/bin/bash

pkill -f 'waybar.*config.jsonc'
waybar -c ~/.config/waybar/config.jsonc &
