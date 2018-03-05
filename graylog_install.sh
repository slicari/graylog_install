#!/bin/sh
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

