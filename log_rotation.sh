#!/bin/bash
# Rotate and compress logs
LOG_FILE="/var/log/nginx/access.log"
BACKUP_DIR="/home/yrys/backup/"
TIMESTAMP=$(date +"%Y%m%d")
mv $LOG_FILE $BACKUP_DIR/log_$TIMESTAMP.log
gzip $BACKUP_DIR/log_$TIMESTAMP.log
touch $LOG_FILE
echo "Log rotation completed."

# This script rotates the log file by moving it to a backup directory with a timestamp and compresses it using gzip. 
# It helps manage log files by archiving old logs and reducing disk space usage.
