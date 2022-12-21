#!/usr/bin/env bash

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9")

sid=0
for i in "${!SPACE_ICONS[@]}"; do
  sid=$(($i+1))
  sketchybar --add space space.$sid left                                \
             --set space.$sid associated_space=$sid                     \
                              ignore_association=on                     \
                              icon=${SPACE_ICONS[i]}                    \
                              icon.padding_left=12                      \
                              icon.padding_right=12                     \
                              background.padding_left=-1                 \
                              background.padding_right=0                \
                              background.corner_radius=0                \
                              background.height=30                      \
                              background.color=0xff${NORD3:1}           \
                              background.drawing=off                    \
                              background.border_width=1 \
                              background.border_color=0xff${NORD6:1} \
                              label.drawing=off                         \
                              script="$PLUGIN_DIR/space.sh"             \
                              click_script="yabai -m space --focus $sid"
done
#
sketchybar --add item space_separator left                              \
           --set space_separator icon=􀄭                                 \
                                 background.padding_left=5              \