#!/bin/bash
# Launch ROS 2 Humble bridge for Isaac Sim

# Source ROS 2
source /opt/ros/humble/setup.bash

# Optional: source local ROS 2 workspace
if [ -f "$(pwd)/ros2_ws/install/setup.bash" ]; then
    source "$(pwd)/ros2_ws/install/setup.bash"
fi

# Launch ROS 2 bridge
/opt/isaac-sim/engine/ros2-bridge/launch_ros2_bridge.sh
