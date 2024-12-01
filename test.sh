#!/bin/bash

# Navigate to the Git repository (optional, if not in the root directory)
# cd /path/to/your/git/repository

# Add all files to the staging area
git add .

# Get the current date and time for the commit message
commit_message=$(date "+%Y-%m-%d %H:%M:%S")

# Commit the changes with the current date and time as the message
git commit -m "$commit_message"

# Push the changes to the remote repository
git push

# Output success message
echo "Changes have been committed with the message: '$commit_message' and pushed to the repository."
