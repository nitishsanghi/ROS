#!/bin/sh


xterm -e "source devel/setup.bash; export TURTLEBOT_GAZEBO_WORLD_FILE= ../home/workspace/catkin_ws/src/map/building/building.world; roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm -e "source devel/setup.bash; roslaunch turtlebot_gazebo amcl_demo.launch" &
sleep 5
xterm -e "source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &

