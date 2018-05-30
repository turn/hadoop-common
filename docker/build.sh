#!/bin/bash 


DIR=$(dirname $0)
. $DIR/setup.sh 

cd /hadoop-common
mvn --settings /home/jenkins/.m2/settings.xml clean install -Pdist -DskipTests -Dtar -Dturn.version="turn-$TURN_VER"

$DIR/repack.sh 

mvn --settings /home/jenkins/.m2/settings.xml deploy -Pdist -DskipTests -Dtar -Dturn.version="turn-$TURN_VER"
#mvn --settings /home/jenkins/.m2/settings.xml clean -Pdist -DskipTests -Dtar

