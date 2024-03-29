#!/bin/bash
dir=$(dirname "$0")
export PATH=$PATH:/home/zorin/.local/bin
HEADPHONE_MAC="0C:AE:BD:12:BE:C4"

# Dual monitors
xrandr --output DisplayPort-0 --off --output DisplayPort-1 --off --output DisplayPort-2 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --output HDMI-A-0 --mode 1920x1080 --pos 0x360 --rotate normal

# Set mouse wheel speed
nohup imwheel &

# Video Wallpaper
nohup bash ~/MyFiles/projects/i3-video-wallpaper/setup.sh -nwb ~/视频/yang_00000_1.mp4,32x32 ~/视频/伊蕾娜_咖啡.mp4 > ~/log/vwp.out &
# nohup bash ~/MyFiles/projects/i3-video-wallpaper/setup.sh -a -n -w -b -f max -g 42x40 -p ~/视频/伊蕾娜_咖啡.mp4 > ~/log/vwp.out
# nohup bash ~/MyFiles/projects/i3-video-wallpaper/setup.sh -a -n -w -b -p ~/视频/魔女之旅_贴贴.mp4 > ~/log/vwp.out &
# nohup bash ~/MyFiles/projects/i3-video-wallpaper/setup.sh -p ~/视频/雪黎.mp4 -a -n -w -b -f max -g 64x64 > ~/log/vwp.out &

# Bluetooth auto connection
nohup bluetoothctl connect $HEADPHONE_MAC > ~/log/bluetooth.out &

# Proxy (Comment it since I am using transparent proxy)
# nohup clash > ~/log/clash.out &

# Notification center
# nohup deadd-notification-center > ~/log/notification.out &

# QQ Notification script
# nohup bash "$dir/qq_notify_1.sh" > ~/log/qq_notify_1.out &
# nohup bash "$dir/qq_notify_2.sh" > ~/log/qq_notify_2.out &

# Redshift (Change color temperature)
nohup redshift -t 6800:6800 -l 23:113 > ~/log/redshift.out &

# Reset button state
notify-send.py a --hint boolean:deadd-notification-center:true int:id:0 boolean:state:true type:string:buttons
echo true > "$dir/night_mode_status"
