#/bin/bash
sudo apt-get update --assume-yes
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common --assume-yes
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update --assume-yes
sudo apt-get install docker-ce --assume-yes

#IMPORTANT!!! ADD CURRENT USER TO DOCKER GROUP, else will have issues starting docker-compose up
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
