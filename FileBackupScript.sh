#!/bin/bash
# Backup a specified directory to a tar.gz file

backup_dir="/path/to/source"
backup_dest="/path/to/backup"

tar -czf "${backup_dest}/backup_$(date +%Y%m%d_%H%M%S).tar.gz" -C "${backup_dir}" .
echo "Backup completed to ${backup_dest}"
