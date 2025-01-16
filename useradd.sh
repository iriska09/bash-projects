# #!/bin/bash
# # Add a new user
# USERNAME=$1
# sudo useradd -m $USERNAME 
# sudo passwd $USERNAME
# sudo usermod -aG sudo $USERNAME
# echo "User $USERNAME added and granted sudo privileges."

# This script adds a new user to the system, sets a password, and grants sudo privileges to the user. 
# It helps automate user creation and ensures the user has the necessary privileges for administrative tasks.


# Prompt for the username
read -p "Enter the username to create: " USERNAME

# Check if username is empty
if [ -z "$USERNAME" ]; then
    echo "Error: Username cannot be empty."
    exit 1
fi

# Add the new user with a home directory
sudo useradd -m $USERNAME 

# Set the password for the user
echo "Set the password for the user $USERNAME"
sudo passwd $USERNAME

# Add the user to the sudo group
sudo usermod -aG sudo $USERNAME

# Confirm the user has been added and granted sudo privileges
echo "User $USERNAME added and granted sudo privileges."
