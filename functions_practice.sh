#!/bin/bash

# Define functions
greet_user() {
    echo "Hello $MY_NAME! Welcome to the server."
    echo "Current time: $(date)"
}

check_disk() {
    echo "Disk usage on root partition:"
    df -h / | awk 'NR==2{print $5}'
}

check_memory() {
    echo "Memory usage:"
    free -m | awk 'NR==2{print "Used: "$3"MB / Total: "$2"MB"}'
}

# Call functions
greet_user
echo ""
check_disk
echo ""
check_memory
