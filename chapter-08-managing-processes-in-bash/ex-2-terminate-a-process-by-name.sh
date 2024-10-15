#!/bin/bash

process_name="firefox"
pid=$(pgrep $process_name)

if [ -n "$pid" ]; then
    kill $pid
    echo "$process_name (PID $pid) terminated."
else
    echo "$process_name not found."
fi
