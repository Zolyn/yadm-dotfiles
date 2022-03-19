#!/bin/bash
dir=$(dirname "$0")
q2=/home/zorin/Desktop/QQSound/q2.wav
inotifywait -m -e open "$q2" | while read -r e
do
  nohup bash "$dir/send_qq_noti.sh" "file:///home/zorin/Desktop/images/avatar4.jpg" > ~/log/qq_notifications_2.out &
done
