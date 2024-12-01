# Use an official ROS2 base image
FROM ros:humble

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install Turtlesim and necessary tools
RUN apt-get update && apt-get install -y \
    ros-humble-turtlesim \
    python3-colcon-common-extensions \
    && rm -rf /var/lib/apt/lists/*

# Optional: Copy scripts into the container
COPY scripts/ /root/scripts/

# Set the entrypoint to source ROS2 setup
ENTRYPOINT ["/bin/bash", "-c", "source /opt/ros/humble/setup.bash && bash"]

