#! /bin/bash

###############################
#
#
#   Maintainer - Aman Bajpai
#
#
###############################

## Docker inatallation on Ubuntu 22.04

## For non-Gnome Desktop environments, gnome-terminal must be installed:
sudo apt install gnome-terminal

## Uninstall the tech preview or beta version of Docker Desktop for Linux. Run:
sudo apt remove docker-desktop

## For a complete cleanup, remove configuration and data files at $HOME/.docker/desktop, the symlink at /usr/local/bin/com.docker.cli, and purge the remaining systemd service files.
rm -r $HOME/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop

####### Install Docker Desktop

## Install the package with apt as follows:
sudo apt-get update
sudo apt-get install ./docker-desktop-<version>-<arch>.deb

## Launch Docker Desktop
systemctl --user start docker-desktop

## Version check:
docker compose version
docker --version
docker version

# systemctl --user enable docker-desktop

# systemctl --user stop docker-desktop