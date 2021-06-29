#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

source "$SCRIPT_DIR"/env.sh

# Secret data
export AWS_ACCESS_KEY_ID=$(cat "$SCRIPT_DIR/../data/aws_access_key_id")
export AWS_SECRET_ACCESS_KEY=$(cat "$SCRIPT_DIR/../data/aws_access_key_id")

# Configuration
export AWS_DEFAULT_REGION="eu-west-2"
export EXPORT_FILE="/tmp/my_vpn.zip"
