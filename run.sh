#!/bin/bash
read -p "Enter IP Address: " ip_address
ansible-playbook -i $ip_address, ./playbook.yaml
