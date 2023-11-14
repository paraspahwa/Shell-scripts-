#!/bin/bash
# Rotate backups by keeping a specified number of recent backups

backup_dir="/path/to/backups"
num_backups_to_keep=5

# Create a new backup
tar -czf "${backup_dir}/backup_$(date +%Y%m%d_%H%M%S).tar.gz" -C "/path/to/source" .

# Remove old backups
backup_count=$(ls -1 "${backup_dir}" | grep "^backup_" | wc -l)

while [ $backup_count -gt $num_backups_to_keep ]; do
    oldest_backup=$(ls -1 "${backup_dir}" | grep "^backup_" | sort | head -n 1)
    rm "${backup_dir}/${oldest_backup}"
    ((backup_count--))
done

echo "Backup completed, and rotation completed."
