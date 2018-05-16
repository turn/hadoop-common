#!/bin/bash 

# Apache Maven Environment Variables
# MAVEN_HOME for Maven 1 - M2_HOME for Maven 2
export M2_HOME=/usr/local/apache-maven
export PATH=${M2_HOME}/bin:${PATH}

cd /hadoop-common
mvn clean deploy -Pdist -DskipTests -Dtar
mvn clean -Pdist -DskipTests -Dtar

