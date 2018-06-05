#!/bin/bash 

. $(dirname $0)/setup.sh 

mkdir -p repack 
cd repack

#retrieve the standard distribution, and replace the guava-shaded jars 
#with the ones from our turn build
wget -O- http://archive.cloudera.com/cdh5/cdh/5/$CDH_VER.tar.gz | tar xzf -
tar xzf ../hadoop-dist/target/$CDH_VER-turn-$TURN_VER.tar.gz 
cd $CDH_VER-turn-${TURN_VER} 
for i in $(find . -name \*.jar | xargs grep -l com.cloudera.com.google)
do
    dst="../${CDH_VER}/${i#./}"
    old=${dst%-turn-${TURN_VER}\.jar}.jar
    cp -f $i $dst
    rm -f $old
done
cd-

tar cf - $CDH_VER | gzip > ../$CDH_VER-turn-${TURN_VER}.tar.gz 

