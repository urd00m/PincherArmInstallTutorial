# PincherArm
This is for the Turtlebot Pincher arm, this contains the complete steps for installation of the moveit workspace along with the phantomX pincher arm files. It also has a URDF model and SRDF fo the turtlebot with the phantomx pincher arm.  *common issues during installation and building can be found at the end of this file*


# Moveit Installation 
This contains the step for moveit installation. 
I recommend installing moveit at /opt/ros/kinetic/share and in a ws_moveit in the home diretory 

## Installation for /opt/ros/kinetic/share: (Instructions found from https://moveit.ros.org/install/) 
run in terminal 
sudo apt-get install ros-kinetic-moveit 

## Installation for ws_moveit:  (Instructions found from https://moveit.ros.org/install/source/) 
run in terminal 
1. rosdep update
2. sudo apt-get update 
3. sudo apt-get dist-upgrade 
4. sudo apt-get install python-wstool python-catkin-tools clang-format-3.9
5. mkdir ~/ws_moveit
6. cd ~/ws_moveit 
7. source /opt/ros/kinetic/setup.bash
8. wstool init src 
9. wstool merge -t src https://raw.githubusercontent.com/ros-planning/moveit/master/moveit.rosinstall
10. wstool update -t src
11. rosdep install -y --from-paths src --ignore-src --rosdistro kinetic
12. catkin config --extend /opt/ros/kinetic --cmake-args -DCMAKE_BUILD_TYPE=Release
13. cd ~/ws_moveit
14. catkin build   (this might take a long time, that is normal, *do not panick*) 
15. source ~/ws_moveit/devel/setup.bash

## PhantomX pincher arm Installation
run in terminal 
1. cd ~/ws_moveit/src
2. git clone https://github.com/vanadiumlabs/arbotix_ros
3. git clone https://github.com/Interbotix/phantomx_pincher_arm
4. cd ..
5. catkin build
6. source ~/ws_moveit/devel/setup.bash

## PhantomX pincher arm file modification (adding in the updated model)
run in terminal 
1. cd ~/ws_moveit/src/phantomx_pincher_arm/phantomx_pincher_arm_description
2. sudo rm -r urdf
3. 
# Errors during installation/building 
