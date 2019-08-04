sudo apt-get install ros-kinetic-moveit
rosdep update 
sudo apt-get update
sudo apt-get dist-upgrade 
sudo apt-get install python-wstool python-catkin-tools clang-format-3.9
mkdir ~/ws_moveit
cd ~/ws_moveit
source /opt/ros/kinetic/setup.bash
wstool init src
wstool merge -t src https://raw.githubusercontent.com/ros-planning/moveit/master/moveit.rosinstall
wstool update -t src
rosdep install -y --from-paths src --ignore-src --rosdistro kinetic
catkin config --extend /opt/ros/kinetic --cmake-args -DCMAKE_BUILD_TYPE=Release
git clone https://github.com/ros-interactive-manipulation/manipulation_msgs.git
git clone https://github.com/ros-interactive-manipulation/household_objects_database_msgs
git clone https://github.com/PickNikRobotics/rosparam_shortcuts
git clone https://github.com/ros-planning/geometric_shapes
git clone https://github.com/ros/geometry2
cd ~/ws_moveit
catkin build
source ~/ws_moveit/devel/setup.bash

