#!/usr/bin/env bash

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9")

sid=0
for i in "${!SPACE_ICONS[@]}"; do
  sid=$(($i+1))
  sketchybar --add space space.$sid left                                \
             --set space.$sid associated_space=$sid                     \
                              ignore_association=on                     \
                              icon=${SPACE_ICONS[i]}                    \
                              icon.padding_left=13                      \
                              icon.padding_right=13                     \
                              background.padding_left=-1                \
                              background.padding_right=0                \
                              background.corner_radius=0                \
                              background.height=32                      \
                              background.color=0xff${COL_CYAN:1}        \
                              background.drawing=off                    \
                              label.drawing=off                         \
                              script="$PLUGIN_DIR/space.sh"             \
                              click_script="yabai -m space --focus $sid"
done
