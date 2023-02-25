#!/bin/zsh

sketchybar \
  --add item weather right \
  --set weather                                                           \
        drawing=on                                                        \
        icon.font="Hack Nerd Font:Bold:12.0"                \
        icon.color=$WHITE                           \
        background.padding_right=10                 \
        label.drawing=on                           \
        update_freq=60                                                    \
        script="$PLUGIN_DIR/weather.sh"                                   \