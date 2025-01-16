#!/bin/bash
# Update and upgrade system packages
echo "Starting system update..."
sudo apt update && sudo apt upgrade -y
echo "System update completed."
echo "starting to list "
sudo apt list --upgradable

# This script updates the system package list and upgrades the installed packages to their latest versions. 
# It ensures the system is up to date with the latest security patches and software improvements.
