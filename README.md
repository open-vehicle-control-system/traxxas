## Traxxas 4WD Ros2 Robot

### Prerequisites

Install the required dependencies with:

`sudo apt install python3-catkin-pkg ros-humble-xacro ros-humble-joint-state-publisher-gui ros-humble-gazebo-ros-pkgs`

### Getting started

1. Create a folder on your computer
2. In this folder clone this repository
3. Run `colcon build --symlink-install`
4. Source your ros2 setup with `source /opt/ros/ROSVERSION/setup.zsh` replacing `ROSVERSION`with your installed version

### Running the robot in a gazebo simulation

5. Run the gazebo simulation with `ros2 launch traxxas launch_sim.launch.py`

### Running the robot in rViz

5. You can just launch your robot with `ros2 launch traxxas rsp.launch.py`. In this case, don't forget to launch the joint_state_publisher with `ros2 run joint_state_publisher_gui joint_state_publisher_gui`
