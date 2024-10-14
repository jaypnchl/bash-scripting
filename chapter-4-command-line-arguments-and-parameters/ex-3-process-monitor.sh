#!/bin/bash

if [ -z "$1" ]; then
   echo "Usage: $0 process_name"
   exit 1
fi

pid=$(pgrep "$1")

if [ -z "$pid" ]; then
   echo "Process $1 is not running."
else
   echo "Process $1 is running with PID: $pid"
fi
