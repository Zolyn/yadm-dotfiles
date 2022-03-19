#!/bin/bash
notify-send.py "叮！" "你有一条来自QQ的消息~" -a QQ -i com.qq.im.deepin --hint string:image-path:"$1" --action check:查看
xdotool key Super_L+0
