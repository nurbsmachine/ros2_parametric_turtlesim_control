# ros2_parametric_turtlesim_control
## Index
  - [Overview](#overview) 
  - [Getting Started](#getting-started)
  - [Demo](#demo)
  - [Authors](#authors)
  - [References](#references)
  - [Credits](#credits)
<!--  Other options to write Readme
  - [Deployment](#deployment)
  - [Used or Referenced Projects](Used-or-Referenced-Projects)
-->
## MRAC02(2024-25): Thesis- autonomous robotics cluster -HYBRIDNETICS
<!--Write a few sentences of academic context and project description -->  
This project aims to demonstrate parametric control of turtlebots using ros2 and turtlesim, developed within the scope of the mrac02 thesis cluster.   
## Overview
<!-- Write Overview about this project -->
This project, ros2_parametric_turtlesim_control, demonstrates a coordinated control mechanism between two turtles in a ROS2-based turtlesim simulation. The system implements parametric behavior, allowing flexible control and interaction between the turtles.

Key Features:

*Parametric Control: Enables dynamic adjustment of target points and behaviors.

*ROS2 Integration: Leverages ROS2 nodes, topics, and messages for seamless interaction.

*Event-Driven Coordination: Triggers one turtle's behavior based on another's actions.

*Docker Support: Simplified setup with an included Dockerfile.

*Extensibility: Designed for scalability to handle more complex multi-agent interactions.


## Getting Started

### Prerequisites
Ensure that you fulfill the following criteria to replicate this project.
* Ubuntu 22.04 <
* Python 3.7 <
* Docker

### Depencies
The project's dependencies include:
* turtlesim: Provides the turtlesim simulation environment.
* ROS2 - for interfacing with the robot

The dependencies are satisfied using the following sources:

```bash
# ROS Noetic and core dependencies
wget -c https://raw.githubusercontent.com/qboticslabs/ros_install_noetic/master/ros_install_noetic.sh && chmod +x ./ros_install_noetic.sh && ./ros_install_noetic.sh
# install numpy
pip3 install numpy setuptools
```

### Installing
A step by step series of examples that tell you how to get a development 
env running

```bash
cd ~/catkin_ws/src
git submodule init
git submodule update
cd ../
rosdep install --from-paths src --ignore-src -r -y
catkin_make -DCMAKE_BUILD_TYPE=Release
source ./devel/setup.bash
```
### Deployment
Add additional notes about how to deploy this on a live system
* Run the application with `.docker/run_user_nvidia.sh`
* Ensure that you are running the indicate command `sudo chmod -R <user_name> \dev_ws` for permitions
* Run `terminator`

## Demo
Here is what the project can do and what are the results.

The project can be launched with the following command:
* `roslaunch package_name package_name.launch`

This opens up `rviz` and shows the robot moving around

## Authors
  - Arun_Prasad - researcher

## References
-https://docs.ros.org/en/humble/Tutorials/Beginner-CLI-Tools/Understanding-ROS2-Nodes/Understanding-ROS2-Nodes.html
## Credits
  - [Name](insert linkedin/webpage link) - role

<!--  DO NOT REMOVE
-->
#### Acknowledgements

- Creation of GitHub template: [Marita Georganta](https://www.linkedin.com/in/marita-georganta/) - Robotic Sensing Expert
- Creation of MRAC-IAAC GitHub Structure: [Huanyu Li](https://www.linkedin.com/in/huanyu-li-457590268/) - Robotic Researcher


