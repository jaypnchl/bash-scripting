#!/usr/bin/env bash

# Function to check for updates
check_updates() {
    echo "Checking for updates..."
    sudo apt update && sudo apt upgrade -y
}

# Extend the case block to handle the new tool
case "$1" in
    update)
        check_updates
        ;;
    # other cases
esac
