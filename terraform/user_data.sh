#!/bin/sh
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker ubuntu
echo added user to docker group
sudo su - ubuntu
