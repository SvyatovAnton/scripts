#!/bin/bash

# Prompt for username
read -p "Enter username: " username

# Add user
sudo useradd -m $username

# Prompt for password
read -s -p "Enter password for $username: " password
echo

# Set password for the user
echo "$username:$password" | sudo chpasswd

# Grant sudo rights to the user
sudo usermod -aG sudo $username

echo "User '$username' created with sudo rights."
