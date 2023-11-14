#!/bin/bash
# Add a new user, set a password, and display user information

echo -n "Enter the new username: "
read new_user

sudo useradd $new_user
sudo passwd $new_user

echo "User $new_user created with the following information:"
grep $new_user /etc/passwd
