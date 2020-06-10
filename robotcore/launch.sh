#!/bin/bash

source /opt/ros/kinetic/setup.bash
ntpdate -q ntp.ubuntu.com

echo $HOST_OS
if [[ "$HOST_OS" == "mac" ]]; then
  ip=$(hostname -i)
  export ROS_IP=$ip
  echo $ROS_IP
  roscore
else
  echo ""host is linux
  roscore
fi
