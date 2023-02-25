#!/usr/bin/env sh

# VARIABLES
PADDING=12
INNER_PADDING=8
SPACE_ICON=""
FONT="Hack Nerd Font"
PLUGIN_DIR="${HOME}/.config/sketchybar/plugins"

sketchybar                                                                \
  --add item                                                              \
        battery right                                                     \
  --set battery                                                           \
        drawing=on                                                        \
        update_freq=10                                                    \
        script="$PLUGIN_DIR/battery.sh"                                   \
  --subscribe battery                                                     \
        system_woke                                                       
