FROM osrf/ros:humble-desktop as base
SHELL ["/bin/bash", "-c"]

ENV ROS_DISTRO=humble
ENV WORKDIR=/usr/src/app

RUN mkdir -p /usr/src/app
WORKDIR ${WORKDIR}
ADD . ${WORKDIR}

RUN sudo apt-get update \
    && sudo apt-get install -y python3-catkin-pkg ros-humble-xacro ros-humble-joint-state-publisher-gui ros-humble-gazebo-ros-pkgs

RUN source /opt/ros/${ROS_DISTRO}/setup.bash \
    && rosdep install --from-paths . --ignore-src --rosdistro ${ROS_DISTRO} -y \
    && colcon build --symlink-install

ADD ./docker/entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]