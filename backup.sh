#!/bin/bash
# Backup a directory and store it in a backup folder with a timestamp
SOURCE="/usr/sbin/nginx"
DEST="/home/yrys/backup"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
tar -czvf $DEST/backup_$TIMESTAMP.tar.gz $SOURCE
echo "Backup completed: $DEST/backup_$TIMESTAMP.tar.gz"


# This script creates a backup of a specified directory and stores it in a backup folder with a timestamp. 
# It ensures important data is backed up regularly and can be restored if needed.

# make sure that DEST is exist or you can create with mkdir -p $DEST 