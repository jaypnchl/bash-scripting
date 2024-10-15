#!/usr/bin/env bash

schedule_backup() {
    echo "Scheduling backup..."
    (crontab -l ; echo "0 2 * * * $0 backup /path/to/source /path/to/dest") | crontab -
}

# Extend the case block to handle the scheduling feature
case "$1" in
    schedule_backup)
        schedule_backup
        ;;
    # other cases
esac
