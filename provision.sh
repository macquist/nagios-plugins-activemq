#!/bin/bash

# Install activemq service and libraries to run the check
apt-get update
apt-get -y install activemq openjdk-7-jdk libactivemq-java libnagios-plugin-perl
# Activate the default configuration
ln -st  /etc/activemq/instances-enabled /etc/activemq/instances-available/main
service activemq restart

## Here is how you can continue after install
#
# # Build the java classes/jar
# ant  -f src/OpenWireProbe/build.xml
# # Build a project archive
# make