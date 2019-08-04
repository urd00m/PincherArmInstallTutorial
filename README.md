# PincherArm
This is for the Turtlebot Pincher arm, this contains the complete steps for installation of the moveit workspace along with the phantomX pincher arm files. It also has a URDF model and SRDF fo the turtlebot with the phantomx pincher arm.  __common issues during installation and building can be found at the end of this file__


# Moveit Installation 
This contains the step for moveit installation. 
I recommend installing moveit at /opt/ros/kinetic/share and in a ws_moveit in the home diretory 

## Moveit quick install 
navigate to where you install this repository __you should be in PincherArmInstallTutorial__

run in terminal 
1. bash moveit_install.sh 

## Installation for /opt/ros/kinetic/share: (Instructions found from https://moveit.ros.org/install/) 
run in terminal __do not run if you did the quick install__
1. sudo apt-get install ros-kinetic-moveit 

## Installation for ws_moveit:  (Instructions found from https://moveit.ros.org/install/source/) 
run in terminal  __do not run if you did the quick install__
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
13. git clone https://github.com/ros-interactive-manipulation/manipulation_msgs.git 
14. git clone https://github.com/ros-interactive-manipulation/household_objects_database_msgs
15. git clone https://github.com/PickNikRobotics/rosparam_shortcuts
16. git clone https://github.com/ros-planning/geometric_shapes
17. git clone https://github.com/ros/geometry2
18. cd ~/ws_moveit
19. catkin build   (this might take a long time, that is normal, *do not panick*) 
20. source ~/ws_moveit/devel/setup.bash

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

You do not need terminal for this 
1. navigate to where you downloaded this github repository and enter into it 
2. copy the urdf folder
3. navigate to the ws_moveit, then enter into src, then phantomx_pincher_arm then phantomx_pincher_arm_description 
4. paste the copied urdf folder into phantomx_pincher_arm_description 
5. navigate to where you downloaded this github repository and enter into it 
6. copy the kobuki_description folder 
7. navigate to the ws_moveit, then enter into src
8. paste the copied kobuki_description folder into src folder

# Errors during installation/building 

#### Missing (file)_Configmsg.cmake files error 
Solution: search (file)_msg ros in a web browser and go into the wiki page, go to the github page stated by the wiki page. Then navigate to the ws_moveit/src file and git clone (url found). Then cd .. and do catkin build in terminal.

#### CMAKE warning 
Solution: if it doens't break the build you can ignore the error, most likely it doesn't mean anything. 

#### CMAKE error 
Solution: Try looking up the error, or post about it on the repository's isuses page __For directory's cup team__ ask Tim for my email, or go to the issues page on my repository and paste the error in, I will attempt to help you solve that error. 

#### Can't find ros package during installation 
Solution: Make sure you are connected to a router with internet access. __For directory's cup team__ if you are on ARF you should switch to PRF_guest and make sure that you are logged in. You can check this by opening firefox and trying to access a website. If that doens't work do sudo apt-get update and sudo apt-get upgrade and try again. If it still doens't work ask Tim for my email or post the what package you were trying to install on my issues page. 

#### Other errors 
Solution: post on my issues page. __For directory's cup team__ you can ask Tim for help or for my email, you can also post those issues on the repository's issues page. 
