#!/bin/bash
dir=$(dirname "$0")
export PATH=$PATH:/home/zorin/.local/bin

nohup bash ~/MyFiles/projects/i3-video-wallpaper/setup.sh -a -n -w -b -f max -g 42x40 -p ~/视频/伊蕾娜_咖啡.mp4 > ~/log/vwp.out
# nohup bash ~/MyFiles/projects/i3-video-wallpaper/setup.sh -a -n -w -b -p ~/视频/魔女之旅_贴贴.mp4 > ~/log/vwp.out &
# nohup bash ~/MyFiles/projects/i3-video-wallpaper/setup.sh -p ~/视频/雪黎.mp4 -a -n -w -b -f max -g 64x64 > ~/log/vwp.out &
# nohup clash > ~/log/clash.out &
nohup deadd-notification-center > ~/log/notification.out &
# nohup bash "$dir/qq_notify_1.sh" > ~/log/qq_notify_1.out &
# nohup bash "$dir/qq_notify_2.sh" > ~/log/qq_notify_2.out &
# nohup redshift -l 23:113 > ~/log/redshift.out &
notify-send.py a --hint boolean:deadd-notification-center:true int:id:0 boolean:state:true type:string:buttons
echo true > "$dir/night_mode_status"
