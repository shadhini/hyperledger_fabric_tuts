#!/usr/bin/env bash

# install curl
sudo apt update
sudo apt upgrade
sudo apt install curl
curl --version

# install docker
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce

# add curent user to the docker group
sudo usermod -aG docker ${USER}
su - ${USER}
id -nG

# check docker-compose availability
docker-compose --version

# install go
# go1.13.6.linux-amd64.tar.gz
cd ~
curl -O https://dl.google.com/go/go1.13.6.linux-amd64.tar.gz
sha256sum go1.13.6.linux-amd64.tar.gz
tar xvf go1.13.6.linux-amd64.tar.gz

sudo chown -R root:root ./go
sudo mv go /usr/local

# First, you must set the environment variable GOPATH
# to point at the Go workspace containing the downloaded Fabric code base

# setting go paths
sudo vim ~/.profile

# At the end of the file, add this line:
export GOPATH=$HOME/dev/repos
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

source ~/.profile

sudo vim ~/.bashrc

# At the end of the file, add this line:
export GOPATH=$HOME/dev/repos
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

source ~/.bashrc

# install Node.js and npm
sudo apt update
sudo apt install nodejs
sudo apt install npm
nodejs -v
npm -v

# install python 2.7
sudo apt-get install python
python --version
