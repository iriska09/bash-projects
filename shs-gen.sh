#!/bin/bash
# Generate SSH key and copy to remote server
ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -q -N ""
ssh-copy-id user@remote_server
echo "SSH key setup completed."




# # Generate SSH key if it doesn't already exist
# if [ ! -f ~/.ssh/id_rsa ]; then
#     ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -q -N ""
#     echo "SSH key pair generated."
# else
#     echo "SSH key pair already exists."
# fi

# # Define instances and usernames
# INSTANCES=("instance1_public_ip" "instance2_public_ip" "instance3_public_ip")
# USER="your_ssh_user"  # Replace with the username (e.g., ec2-user, ubuntu)

# # Copy the public key to each instance
# for INSTANCE in "${INSTANCES[@]}"; do
#     ssh-copy-id $USER@$INSTANCE
#     echo "Public key copied to $USER@$INSTANCE."
# done

# echo "SSH setup completed for all instances."


# ///////// 
# This script generates an SSH key pair (if not already created) 
# and copies the public key to multiple instances, enabling passwordless SSH access.
# Even for new instances, you can use this script to automatically attach the public key, 
# ensuring secure and seamless access without manually configuring each instance.
 