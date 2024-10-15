#!/bin/bash

# Update system
sudo apt update && sudo apt upgrade -y
echo "System update complete."

# Perform backup of /var/log
BACKUP_DIR="/backup/logs"
mkdir -p "$BACKUP_DIR"
rsync -avh /var/log "$BACKUP_DIR"
echo "Log files backup complete."
