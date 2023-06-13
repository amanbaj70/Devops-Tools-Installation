#! /bin/bash

# Reference Github Repos:
# https://github.com/DeekshithSN/cheatsheet/blob/master/installtion_guide_ubuntu.md
# https://github.com/jaiswaladi246/30-Days-Of-DevOps/blob/main/DAY-7.md

###############################
#  
#
#   Maintainer - Aman Bajpai
#
#
###############################

## Nexus inatallation on Ubuntu 22.04

## Install Java 8 or above

sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt install openjdk-11-jdk -y

mkdir /opt && cd /opt
wget https://download.sonatype.com/nexus/3/nexus-3.55.0-01-unix.tar.gz 

tar -xvf nexus-3.55.0-01-unix.tar.gz

rm -rf nexus-3.55.0-01-unix.tar.gz
mv nexus-3.55.0-01 nexus

# Run nexus using nexus user
useradd nexus
passwd nexus

visudo
## Add below line
# User privilege specification
nexus   ALL=(ALL:ALL) NOPASSWD:ALL

## change directory owner to nexus
chown -R nexus:nexus nexus
chown -R nexus:nexus sonatype-work

# Run as a server
vi /etc/systemd/system/nexus.service

[Unit]
Description=nexus service
After=network.target
  
[Service]
Type=forking
LimitNOFILE=65536
ExecStart=/opt/nexus/bin/nexus start
ExecStop=/opt/nexus/bin/nexus stop 
User=nexus
Restart=on-abort
TimeoutSec=600
  
[Install]
WantedBy=multi-user.target

## Run below command for enabling and starting nexus
sudo systemctl daemon-reload
sudo systemctl enable nexus.service
sudo systemctl start nexus.service
sudo systemctl status nexus.service