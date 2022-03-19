#!/bin/bash
dir=$(dirname "$0")
nohup bash ~/MyFiles/projects/i3-video-wallpaper/setup.sh -p ~/视频/光_对立.mp4 -a -n -w -b -g 32x32 > ~/log/vwp.out &
nohup clash > ~/log/clash.out &
nohup deadd-notification-center > ~/log/notification.out &
# nohup bash "$dir/qq_notify_1.sh" > ~/log/qq_notify_1.out &
# nohup bash "$dir/qq_notify_2.sh" > ~/log/qq_notify_2.out &
nohup redshift -l 23:113 > ~/log/redshift.out &
notify-send.py a --hint boolean:deadd-notification-center:true int:id:0 boolean:state:true type:string:buttons
echo true > "$dir/night_mode_status"
