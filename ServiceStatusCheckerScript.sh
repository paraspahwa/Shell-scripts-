#!/bin/bash
# Check the status of a list of services

services=("ssh" "apache2" "mysql")

for service in "${services[@]}"; do
    if systemctl is-active --quiet "$service"; then
        echo "$service is running."
    else
        echo "$service is not running."
    fi
done
