#!/bin/bash

echo "Updating repositories"
sudo apt -y update

echo "Installing PIP"
sudo apt -y install python-pip && sudo pip install -U pip

echo "Installing ansible"
sudo pip install ansible

ansible-playbook ansible-laptop.yml
