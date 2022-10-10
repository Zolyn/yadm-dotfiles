#!/bin/bash
transparent=00000000
white=ffffff
red=d23c3dff
font="sans-serif"
fontlg=64

i3lock \
 --clock \
 --bar-indicator \
 -c "$transparent" \
 --date-color="$white" \
 --time-color="$white" \
 --time-font="$font" \
 --time-size="$fontlg" \
 --verif-color="$white" \
 --verif-font="$font" \
 --verif-size="$fontlg" \
 --wrong-color="$red" \
 --wrong-font="$font" \
 --wrong-size="$fontlg" \
 --modif-color="$transparent" \
 --modif-size="$fontlg"
 --redraw-thread
