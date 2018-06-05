#!/bin/bash 


DIR=$(dirname $0)
. $DIR/setup.sh 

cd /hadoop-common
find . -name pom.xml -exec sed -i -e "s/\${turn.version}/turn-${TURN_VER}/g" {} \;
mvn --settings /home/jenkins/.m2/settings.xml clean install -Pdist -DskipTests -Dtar -Dturn.version="turn-$TURN_VER"

cd hadoop-mapreduce-project
mvn --settings /home/jenkins/.m2/settings.xml deploy -Pdist -DskipTests -Dtar -Dturn.version="turn-$TURN_VER"
#$DIR/repack.sh 

#mvn --settings /home/jenkins/.m2/settings.xml deploy -Pdist -DskipTests -Dtar -Dturn.version="turn-$TURN_VER"

