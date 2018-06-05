#!/bin/bash 

docker rm -f hadoop-common
docker build -t hadoop-common docker/
docker run -v ${HOME}/.m2:/home/jenkins/.m2 -v $(pwd):/hadoop-common --name hadoop-common hadoop-common /home/jenkins/build.sh 
docker rm -f hadoop-common
