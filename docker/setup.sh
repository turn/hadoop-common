#!/bin/bash 

# Apache Maven Environment Variables
# MAVEN_HOME for Maven 1 - M2_HOME for Maven 2
export M2_HOME=/usr/local/apache-maven
export PATH=${M2_HOME}/bin:${PATH}
export CDH_VER="hadoop-2.6.0-cdh5.16.1"
export TURN_VER="0.1"
