#!/usr/bin/env sh

sketchybar --add item       front_app left                                    \
           --subscribe      front_app front_app_switched                      \
           --set            front_app script="$PLUGIN_DIR/front_app.sh"       \
                            label.width: 100 \
                            label.padding_left=-6                             \
                            background.height=32                      \
                            background.color=0xff${COL_CYAN:1}        \
