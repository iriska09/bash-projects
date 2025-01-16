#!/bin/bash
# MySQL database backup
DB_NAME="my_database"
USER="db_user_y" 
PASSWORD="db_pass_y"
BACKUP_DIR="/home/yrys/backup"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
mysqldump -u $USER -p$PASSWORD $DB_NAME > $BACKUP_DIR/${DB_NAME}_$TIMESTAMP.sql
echo "Database backup completed: $BACKUP_DIR/${DB_NAME}_$TIMESTAMP.sql"

# This script creates a backup of a specified MySQL database by dumping it to an SQL file with a timestamp. 
# It ensures the database is backed up regularly, enabling easy restoration in case of data loss.
