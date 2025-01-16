# #!/bin/bash
# # Check the status of a specific service 
# SERVICE=$1
# systemctl is-active --quiet $SERVICE && echo "$SERVICE is running" || echo "$SERVICE is not running"


#!/bin/bash
# Check the status of a specific service

# Prompt for the service name
read -p "Enter the service name to check: " SERVICE

# Check if the service is running
systemctl is-active --quiet $SERVICE && echo "$SERVICE is running" || echo "$SERVICE is not running"

# This script checks the status of a specified service using `systemctl` and outputs whether the service is running or not. 
# It helps monitor system services and ensure critical services are always running.
