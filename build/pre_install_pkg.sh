#!/bin/bash

sudo apt update
sudo apt install -y git vim
git config --global user.name "harsanskumaran"
git config --global user.email "harsanskumaran@gmail.com"
sudo apt install -y python3 python3-pip
sudo apt-get install openjdk-17-jdk -y
sudo apt install -y docker.io  docker-compose
sudo usermod -aG docker ubuntu
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
sudo usermod -aG docker jenkins
sudo sed -i 's/8080/8081/' /usr/lib/systemd/system/jenkins.service
sudo systemctl daemon-reload
sudo systemctl restart jenkins
git clone https://github.com/harsanskumaran/Git_task.git
