#!/bin/bash

# Check if the URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <new_remote_url>"
    exit 1
fi

# Set the new remote URL
new_remote_url="$1"

# Change the remote URL for 'origin'
git remote set-url origin "$new_remote_url"

# Push to 'origin' without specifying a branch
git push --all origin
