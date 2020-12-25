FROM ros:noetic-ros-base

HEALTHCHECK CMD /ros_entrypoint.sh rostopic list || exit 1

RUN apt-get update -y && \
    apt-get install -y \
    ros-$ROS_DISTRO-move-base \
    ros-$ROS_DISTRO-teb-local-planner \
    && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app/move-base
COPY ./app /app/move-base
WORKDIR /app/move-base
CMD ["roslaunch", "--wait", "ros.launch"]
