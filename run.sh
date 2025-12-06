#!/bin/bash

read -p "Enter IP Address: " ip_address
read -p "Enter SSH Username: " ssh_user

ansible-playbook -i $ip_address, ./playbook.yaml -u $ssh_user -K -k
