#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt update -y

# Install Nginx
echo "Installing Nginx..."
sudo apt install nginx -y

# Enable Nginx to start on boot
echo "Enabling Nginx to start on boot..."
sudo systemctl enable nginx

# Start Nginx service
echo "Starting Nginx..."
sudo systemctl start nginx

# Check Nginx status
echo "Checking Nginx status..."
sudo systemctl status nginx

# Print installation success message
echo "Nginx has been installed and started successfully."
