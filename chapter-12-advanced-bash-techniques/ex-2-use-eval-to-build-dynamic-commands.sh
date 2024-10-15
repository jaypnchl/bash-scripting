#!/bin/bash

# Read a command from the user
read -p "Enter a command to execute: " user_cmd

# Use eval to execute the dynamic command
eval $user_cmd
