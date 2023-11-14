#!/bin/bash
# Generate a random password

echo "Password Generator"
echo "-------------------"

echo -n "Enter the length of the password: "
read password_length

if [ "$password_length" -lt 1 ]; then
    echo "Invalid password length."
    exit 1
fi

password=$(openssl rand -base64 48 | tr -dc 'a-zA-Z0-9' | head -c$password_length)

echo "Generated Password: $password"
