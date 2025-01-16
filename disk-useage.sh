#!/bin/bash
# Check disk usage and send alert if usage exceeds 80%
THRESHOLD=80
df -h | awk '{ if($5+0 > THRESHOLD) print $0; }' | while read output;
do
    echo "Disk usage alert: $output"
done



# This script checks the disk usage on the system and sends an alert if usage exceeds 80%. 
# It helps monitor disk space and avoid potential issues by notifying the user when disk usage is high.


# #!/bin/bash: Specifies the script uses the Bash shell to execute commands.
# # Check disk usage and send alert if usage exceeds 80%: A comment describing the script's purpose.
# THRESHOLD=80: Sets the usage percentage limit for triggering an alert.
# df -h: Lists disk usage in a human-readable format.
# awk '{ if($5+0 > THRESHOLD) print $0; }': Filters partitions with usage exceeding the threshold.
# | while read output;: Passes filtered lines to a loop for processing.
# do: Starts the loop for each line of input.
# echo "Disk usage alert: $output": Prints an alert message with the details.
# done: Ends the loop

