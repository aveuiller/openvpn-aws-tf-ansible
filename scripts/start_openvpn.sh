#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

source "$SCRIPT_DIR"/env.sh

cd terraform || exit
terraform init
terraform plan --var-file ../config.json
terraform apply --var-file ../config.json
cd - || exit

cd ansible || exit
# This will also add a client
ansible-playbook -i inventory openvpn_install.yml -e "username=john" -e "$EXPORT_FILE"
# shellcheck disable=SC2103
ansible-playbook -i inventory openvpn_add_client.yml -e "username=john" -e "$EXPORT_FILE"
cd - || exit
