#!/bin/bash

# Download the latest stable version of kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Verify the checksum
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

# Install kubectl to /usr/local/bin
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Verify kubectl installation
kubectl version --client

# Clear terminal screen
clear

