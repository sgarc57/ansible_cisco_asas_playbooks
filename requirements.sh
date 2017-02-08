#!/bin/bash
# requirements for running ansible: Note the minimum version is 2.2 for the asa functionality
# default folder used is /opt/ansible
if [ -d /opt/ansible ]; then echo "found ansible default directory"
else echo "you may need to create the ansible directory /opt/ansible"
fi
if [ -z `cat /etc/passwd | grep admin` ]; then echo "you may need to create the admin user to log into devices"
else echo "admin user found"
fi
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
yum install -y ansible python-devel gcc-devel gcc openssl openssl-devel
pip install paramiko
