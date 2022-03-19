#!/bin/bash
lags=$(pgrep -c notify-send.py)
if [ "$lags" -gt 0  ];then
  pkill notify-send.py
  notify-send.py "完成！" "滞留的通知进程已被清除！" -a LagsCleaner
else
  notify-send.py "啊嘞？" "没有找到滞留的通知进程哦~" -a LagsCleaner
fi
notify-send.py a --hint boolean:deadd-notification-center:true int:id:3 boolean:state:false type:string:buttons
