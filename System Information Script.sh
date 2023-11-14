#!/bin/bash
# Display basic system information

echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "Available Memory: $(free -m | awk 'NR==2{print $4}') MB"
echo "Disk Space Usage: $(df -h / | awk 'NR==2{print $5}')"
