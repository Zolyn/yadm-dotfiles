#!/bin/bash
dir=$(dirname "$0")
statusPath=$dir/night_mode_status
status=$(cat "$statusPath")
if [ "$status" == 'true' ];then
  pkill redshift
  status=false
else
  nohup redshift -l 23:113 > ~/log/redshift.out &
  status=true
fi

notify-send.py a --hint boolean:deadd-notification-center:true int:id:0 boolean:state:"$status" type:string:buttons
echo "$status" > "$statusPath"
