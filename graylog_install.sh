#!/bin/sh
#
#
# Updates boiii
apt-get update
apt-get upgrade
apt-get dist-upgrade
# Download and install graylog 
docker pull graylog/graylog
# Create directories for persistent config and log data
mkdir -p ./graylog/config
cd ./graylog/config
wget https://raw.githubusercontent.com/Graylog2/graylog-docker/2.4/config/graylog.conf
wget https://raw.githubusercontent.com/Graylog2/graylog-docker/2.4/config/log4j2.xml
# Install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
# Confirm docker-compose installed
docker-compose --version
