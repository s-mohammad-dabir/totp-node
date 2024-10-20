#!/bin/bash

# Prompt user for the TOTP Secret
read -p "Enter the TOTP secret (Base32 format): " totp_secret

# Check if user entered a value
if [ -z "$totp_secret" ]; then
  echo "TOTP secret cannot be empty. Exiting."
  exit 1
fi

# Prompt user for the port number
read -p "Enter the port number: (default: 3000)" port

# Check if user entered a value
if [ -z "$port" ]; then
  port=3000
  exit 1
fi

# Create the .env file or overwrite if it exists
echo "PORT=$port" > .env
echo "TOTP_SECRET=$totp_secret" >> .env

echo ".env file has been created with the following content:"
cat .env