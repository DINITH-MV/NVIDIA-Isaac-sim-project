#!/bin/bash
export DISPLAY=:0
export ACCEPT_EULA=Y
export PRIVACY_CONSENT=Y
export OMNI_KIT_ALLOW_ROOT=1

echo "Pulling latest from GitHub..."
cd /workspace/YOUR_REPO
git pull origin main

echo "Launching Isaac Sim..."
cd /isaac-sim
./isaac-sim.sh 2>&1 | tee /workspace/YOUR_REPO/logs/isaac_$(date +%Y%m%d_%H%M%S).log
