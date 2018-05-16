FROM centos:6

# Build environment for hadoop-common 
# need java7, c++, mvn and protoc 2.5.0

USER root 
RUN yum -y install which java-1.7.0-openjdk-devel gcc-c++ wget make && yum clean all


RUN cd /usr/local && \
    wget http://www-us.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && \
    wget https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.gz && \
    tar -xf apache-maven-3.3.9-bin.tar.gz && rm -f apache-maven-3.3.9-bin.tar.gz && \
    tar -xf protobuf-2.5.0.tar.gz && rm -f protobuf-2.5.0.tar.gz && \
    mv apache-maven-3.3.9/ apache-maven/ && \
    cd protobuf-2.5.0/ && ./configure && make install 


RUN groupadd --gid 516 jenkins && useradd -m -d /home/jenkins -g jenkins --uid 516 jenkins

ADD build.sh /home/jenkins/
RUN chown jenkins:jenkins /home/jenkins/build.sh && chmod u+x /home/jenkins/build.sh 

CMD ["tail", "-f", "/dev/null"]

