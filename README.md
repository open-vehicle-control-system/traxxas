## Traxxas 4WD Ros2 Robot

### Prerequisites

Install the required dependencies with:

`sudo apt install python3-catkin-pkg ros-humble-xacro ros-humble-joint-state-publisher-gui ros-humble-gazebo-ros-pkgs`

### Getting started

1. Create a folder on your computer
2. In this folder clone this repository
3. Run `colcon build --symlink-install` from the folder you created in step 1
4. Source your ros2 setup with `source /opt/ros/ROSVERSION/setup.zsh` replacing `ROSVERSION`with your installed version
5. Source your robot with `source install/setup.zsh` from the folder you created in step 1

### Running the robot in a gazebo simulation

6. Run the gazebo simulation with `ros2 launch traxxas launch_sim.launch.py`
7. Run teleop keyboard with `ros2 run teleop_twist_keyboard teleop_twist_keyboard`

### Running the robot in a gazebo simulation (with Docker)

6. Run the gazebo simulation with `docker-compose --profile simulation up`
7. Run teleop keyboard with `docker-compose run --rm teleop`

### Running the robot in rViz

6. You can just launch your robot with `ros2 launch traxxas rsp.launch.py`. In this case, don't forget to launch the joint_state_publisher with `ros2 run joint_state_publisher_gui joint_state_publisher_gui`

### Running the robot in rViz (with Docker)

6. You can just launch your robot with `docker-compose up`
