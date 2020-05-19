#!/bin/bash

# Install packages to allow apt to use a repository over HTTPS:
apt-get install apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG keys
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources:
add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable"

# Next, update the package database with the Docker packages from the newly added repo:
apt-get update

# Install the latest version of Docker CE
apt-get -y install docker-ce

# If you want to avoid typing sudo whenever you run the docker command, add your user to the docker group:
usermod -aG docker ${USER}

# Run this command to download the Docker Compose version 1.17:
curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary:
chmod +x /usr/local/bin/docker-compose
