#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

source "$SCRIPT_DIR"/env.sh

cd terraform || exit
terraform apply -destroy --var-file ../config.json
cd - || exit
