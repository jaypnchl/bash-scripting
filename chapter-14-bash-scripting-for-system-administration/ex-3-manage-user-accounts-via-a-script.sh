#!/bin/bash

# Add a new user and set password
username="adminuser"
password="adminpassword"

sudo useradd -m "$username"
echo "$username:$password" | sudo chpasswd

# Add user to sudo group
sudo usermod -aG sudo "$username"

echo "User $username has been created and added to the sudo group."
