#!/bin/bash

OS=$(uname -s)

if [ "${OS}" = "Linux" ] ; then
    
    # Install ansible
    sudo apt-get install ansible


    # Install GCP modules requisites
    sudo apt-get install python3-pip
    pip install requests google-auth

    # Install requisites on RHEL/CentOS
    if [ -f /etc/redhat-release ]; then
        yum install python-requests
    fi


    # Configure ansible dynamic inventory with GCP
    sudo mkdir -p /opt/ansible/inventory
    sudo mv ansible/gcp_credentials.json /opt/ansible/inventory/service-account.json
    sudo mv ansible/gcp_dynamic_inv.yml /opt/ansible/inventory/ascn.gcp.yml
    sudo chmod -R 755 /opt/ansible

    # Move ansible files to /etc/ansible
    sudo mv ansible/* /etc/ansible/
    sudo rm /etc/ansible/README.md

else
    echo "Your OS (${OS}) is not supported."
fi