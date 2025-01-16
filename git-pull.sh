#!/bin/bash
# Auto pull the latest code from the Git repository
REPO_PATH="/root/bash-prac/bash-projects"
BRANCH="main"
cd $REPO_PATH
git pull origin $BRANCH
echo "Code pulled from $BRANCH branch."


# This script automatically pulls the latest code from a specified Git repository and branch. 
# It helps keep the local repository updated with the latest changes from the remote source.
