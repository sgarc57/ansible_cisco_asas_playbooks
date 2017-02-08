#!/bin/bash
# requirements for running ansible: Note the minimum version is 2.2 for the asa functionality
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
yum install -y ansible python-devel gcc-devel gcc openssl openssl-devel
pip install paramiko
