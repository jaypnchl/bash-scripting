#!/usr/bin/env bash

SOURCE_DIR="$HOME/documents"
BACKUP_DIR="$HOME/backup"

# Detect OS and choose the appropriate tool
if [[ "$OSTYPE" == "linux-gnu"* || "$OSTYPE" == "darwin"* ]]; then
    echo "Linux/macOS detected. Using rsync."
    rsync -avh "$SOURCE_DIR" "$BACKUP_DIR"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    echo "Windows detected. Using xcopy."
    xcopy "$SOURCE_DIR" "$BACKUP_DIR" /E /I
else
    echo "Unsupported OS."
fi

echo "Backup complete."
