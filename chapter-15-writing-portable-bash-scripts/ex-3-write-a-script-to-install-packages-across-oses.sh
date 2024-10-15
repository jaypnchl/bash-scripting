#!/usr/bin/env bash

# Detect the OS and install curl using the appropriate package manager
if [ -f /etc/debian_version ]; then
    echo "Debian-based system detected. Installing curl..."
    sudo apt install curl -y
elif [ -f /etc/redhat-release ]; then
    echo "Red Hat-based system detected. Installing curl..."
    sudo yum install curl -y
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "macOS detected. Installing curl..."
    brew install curl
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    echo "Windows detected. Please install curl manually."
else
    echo "Unsupported system."
fi
