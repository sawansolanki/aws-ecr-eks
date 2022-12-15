#!/bin/sh

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt-get install zip unzip
unzip awscliv2.zip
sudo apt-get update
unzip awscliv2.zip
sudo ./aws/install
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
echo y | sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo service docker start
