#! /bin/bash

###############################
#
#
#   Maintainer - Aman Bajpai
#
#
###############################

## SonarQube using docker

docker run -d --name sonar -p 9000:9000 sonarqube:lts-community


## SonarQube inatallation on Ubuntu 22.04

#  sudo apt-get install wget unzip -y

#  sudo apt-get install openjdk-17-jdk -y
#  sudo apt-get install openjdk-17-jre -y

#  sudo update-alternatives --config java

#  java -version

#  cd /tmp

# sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.0.65466.zip

# sudo unzip sonarqube-9.9.0.65466.zip -d /opt

# sudo mv /opt/sonarqube-9.9.0.65466 /opt/sonarqube

# sudo groupadd sonar

# sudo useradd -c "user to run SonarQube" -d /opt/sonarqube -g sonar sonar 
# sudo chown sonar:sonar /opt/sonarqube -R

# sudo su sonar
# cd /opt/sonarqube/bin/linux-x86-64/
# ./sonar.sh start

# ./sonar.sh status
