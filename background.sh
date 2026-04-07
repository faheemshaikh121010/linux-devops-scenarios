#!/bin/bash

# Create sample files and directories
mkdir -p /root/devops-lab
cd /root/devops-lab

# Create dummy files
touch file1.txt file2.log file3.conf

# Fill disk artificially (simulate issue)
fallocate -l 50M bigfile.log

# Create a process (simulate CPU usage)
yes > /dev/null &

# Install tools
apt update -y
apt install -y htop net-tools

echo "Setup complete!"