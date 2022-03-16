#!/bin/bash
sudo yum update -y

sudo hostnamectl set-hostname ansible
sudo reboot
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install epel-release-latest-7.noarch.rpm
sudo yum update -y
sudo yum install python python-devel python-pip openssl ansible -y

sudo amazon-linux-extras install ansible2
sudo  useradd ansadmin
sudo  passwd ansadmin


sudo yum update -y
sudo amazon-linux-extras install docker
sudo yum install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo usermod -a -G docker ansadmin
