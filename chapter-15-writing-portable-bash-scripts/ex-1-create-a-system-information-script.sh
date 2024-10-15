#!/usr/bin/env bash

# Get OS name
if [ "$(uname)" == "Darwin" ]; then
    os_name="macOS"
else
    os_name=$(uname -s)
fi

# Get kernel version
kernel_version=$(uname -r)

# Get CPU architecture
cpu_arch=$(uname -m)

echo "Operating System: $os_name"
echo "Kernel Version: $kernel_version"
echo "CPU Architecture: $cpu_arch"
