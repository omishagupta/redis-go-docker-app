#!/bin/bash

set -e

echo "---------------------------- Checking dependencies -----------------------------"
if [ -x "$(command -v vagrant)" ]; then
    echo "Vagrant version: " `vagrant --version`
else
    apt install virtualbox
    apt update
    curl -O https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb
    apt install ./vagrant_2.2.6_x86_64.deb
fi

if [ -x "$(command -v ansible)" ]; then
    echo "Ansible version: " `ansible --version -`
else
    apt update
    apt install software-properties-common
    apt-add-repository --yes --update ppa:ansible/ansible
    apt install ansible
fi

echo "-------------------------- Dependencies Resolved ----------------------------"

echo "Which underneath service would you want to run the app on (choose the corresponding number): \n [1] Docker \n [2] Kubernetes "
read choice
if [[ $choice == 1 ]]; then
    service=Docker
else
    service=Kubernetes
fi
env service=$service
echo "Bringing up vagrant cluster with $service ( This will take around 10 mins) "
cd vagrant-ansible
vagrant up
