#!/bin/bash
# This is an oversimplified run script to allow users to run the playbook without remembering
# the required flags. If this grows it may be ported to a Makefile
read -p "Enter IP Address: " ip_address
if [[ ! -n $ip_address ]]; then
    echo "FATAL: IP address cannot be blank"
    exit 1
fi
read -p "Enter SSH Username: " ssh_user
if [[ ! -n $ip_address ]]; then
    echo "FATAL: SSH username cannot be blank"
    exit 1
fi

echo "You will be prompted for SSH and sudo (become) password, these are required for ansible to run."
ansible-playbook -i $ip_address, ./playbook.yaml -u $ssh_user -K -k