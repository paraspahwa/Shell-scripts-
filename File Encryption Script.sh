#!/bin/bash
# Encrypt a file using GPG

echo "File Encryption"
echo "----------------"

echo -n "Enter the file to encrypt: "
read input_file

echo -n "Enter the recipient's GPG key: "
read recipient_key

output_file="${input_file}.gpg"

gpg --encrypt --recipient "$recipient_key" --output "$output_file" "$input_file"

echo "Encryption completed. Encrypted file: $output_file"
