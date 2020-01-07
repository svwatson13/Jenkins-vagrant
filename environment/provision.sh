#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git -y

# install nodejs
#sudo apt-get install python-software-properties
#curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
#sudo apt-get install nodejs -y

# install pm2
#sudo npm install pm2 -g

sudo apt-get install openjdk-8-jre -y
sudo add-apt-repository ppa:webupd8team/java
sudo apt install oracle-java8-installer -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo apt-add-repository "deb https://pkg.jenkins.io/debian-stable binary/"
sudo apt-get update -y
sudo apt install jenkins -y
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service
