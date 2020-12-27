FROM ros:noetic-ros-base

HEALTHCHECK CMD /ros_entrypoint.sh rostopic list || exit 1

RUN apt-get update -y && \
    apt-get install -y \
    ros-$ROS_DISTRO-move-base \
    ros-$ROS_DISTRO-teb-local-planner \
    && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app
COPY ./app /app
WORKDIR /app
CMD ["roslaunch", "--wait", "ros.launch"]
