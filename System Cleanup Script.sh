#!/bin/bash
# Clean up system files and temporary directories

echo "System Cleanup"
echo "---------------"

# Clean package cache
sudo apt-get clean

# Remove old log files
sudo find /var/log -type f -name "*.log" -exec rm -f {} \;

# Clean temporary directories
sudo rm -rf /tmp/*

echo "System cleanup completed."
