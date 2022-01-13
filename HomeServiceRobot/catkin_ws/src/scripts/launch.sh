#!/bin/sh

xterm -e " gazebo " &
sleep 5
xterm -e " source /opt/ros/kinetic/setup.bash; roscore" &
sleep 5
xterm -e " rosrun rviz rviz"


sleep 5
xterm -e "source /opt/ros/kinetic/setup.bash; roslaunch turtlebot_gazebo gmapping_demo.launch" &
sleep 5
xterm -e "source /opt/ros/kinetic/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm -e "source /opt/ros/kinetic/setup.bash; roslaunch turtlebot_teleop keyboard_teleop.launch"
