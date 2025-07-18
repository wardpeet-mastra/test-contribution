#!/bin/bash

# Simple script to check if a GitHub secret is not empty
# Usage: ./check-secret.sh <secret_name> <secret_value>

SECRET_NAME="$1"
SECRET_VALUE="$2"

if [ -z "$SECRET_NAME" ]; then
    echo "ERROR: Secret name not provided"
    echo "Usage: $0 <secret_name> <secret_value>"
    exit 1
fi

if [ -z "$SECRET_VALUE" ]; then
    echo "ERROR: Secret '$SECRET_NAME' is empty or not set!"
    exit 1
else
    echo "SUCCESS: Secret '$SECRET_NAME' is properly configured"
    exit 0
fi