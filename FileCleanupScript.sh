#!/bin/bash
# Delete files older than 7 days in a specified directory

cleanup_dir="/path/to/cleanup"

find "${cleanup_dir}" -type f -mtime +7 -exec rm {} \;
echo "Cleanup completed for files older than 7 days in ${cleanup_dir}"
