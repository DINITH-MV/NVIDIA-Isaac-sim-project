#!/bin/bash
# ============================================
# Launch ROS 2 Humble Bridge for Isaac Sim
# ============================================

# Source ROS 2 Humble environment
source /opt/ros/humble/setup.bash

# Optional: source ROS 2 workspace if you have packages
if [ -f "$(pwd)/ros2_ws/install/setup.bash" ]; then
    source "$(pwd)/ros2_ws/install/setup.bash"
fi

# Launch the Isaac Sim ROS 2 bridge
/opt/isaac-sim/engine/ros2-bridge/launch_ros2_bridge.sh
