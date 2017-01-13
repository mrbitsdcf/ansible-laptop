#!/bin/bash

CURRENT=$(pwd)
USER=$(whoami)

if [ ! -d ~/.ansible-laptop] then
    echo "\033[0;32m Python install \033[0m"
    sudo apt-get install -y -qq python python-pip git git-core openssh-server

    echo "\033[0;32m Updating pip \033[0m"
    sudo pip install -U pip

    echo "\033[0;32m Ansible Installation \033[0m"
    sudo pip install ansible

    echo "\033[0;32m Clone repository \033[0m"
    sudo -u `whoami` -H git clone git@github.com:mrbitsdcf/ansible-laptop.git $HOME/.ansible-laptop
else
    echo "\033[0;32mThe folder ansible-laptop is already installed \033[0m"
fi

cd $HOME/.ansible-laptop

ansible-playbook -i hosts ansible-laptop.yml -c local -K
