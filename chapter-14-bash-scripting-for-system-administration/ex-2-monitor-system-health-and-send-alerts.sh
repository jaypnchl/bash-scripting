#!/bin/bash

# Set threshold limits
CPU_LIMIT=1.50
MEMORY_LIMIT=80
DISK_LIMIT=90

# Check CPU load
cpu_load=$(top -bn1 | grep "load average" | awk '{print $10}')
echo "Current CPU load: $cpu_load"
if (( $(echo "$cpu_load > $CPU_LIMIT" | bc -l) )); then
    echo "Warning: CPU load is above $CPU_LIMIT!"
fi

# Check memory usage
memory_usage=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')
echo "Current memory usage: $memory_usage%"
if (( $(echo "$memory_usage > $MEMORY_LIMIT" | bc -l) )); then
    echo "Warning: Memory usage is above $MEMORY_LIMIT%!"
fi

# Check disk space
disk_usage=$(df / | grep / | awk '{print $5}' | sed 's/%//')
echo "Current disk usage: $disk_usage%"
if [ "$disk_usage" -ge $DISK_LIMIT ]; then
    echo "Warning: Disk space usage is above $DISK_LIMIT%!"
fi
