#!/bin/bash
dir=$(dirname "$0")
q1=/home/zorin/Desktop/QQSound/q1.wav
inotifywait -m -e open "$q1" | while read -r e
do
  nohup bash "$dir/send_qq_noti.sh" "file:///home/zorin/Desktop/images/avatar3.png" > ~/log/qq_notifications_1.out &
done
