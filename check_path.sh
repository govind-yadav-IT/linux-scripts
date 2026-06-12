#!/bin/bash
set -e
# Check if argument was provided
if [ $# -eq 0 ]; then
    echo "Error: Please provide a directory path"
    echo "Usage: ./check_path.sh /path/to/check"
    exit 1
fi

# Use the argument
PATH_TO_CHECK=$1

echo "Checking disk usage for: $PATH_TO_CHECK"
df -h $PATH_TO_CHECK
