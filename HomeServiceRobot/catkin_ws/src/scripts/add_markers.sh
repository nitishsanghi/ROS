#!/bin/sh

xterm -e "source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 7
xterm -e "source devel/setup.bash; roslaunch turtlebot_gazebo amcl_demo.launch" &
sleep 7
xterm -e "source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 7
xterm -e "source devel/setup.bash; roslaunch add_markers add_markers.launch" &
sleep 7
xterm -e "source devel/setup.bash; roslaunch pick_objects pick_objects.launch"
