FROM ubuntu:14.04

MAINTAINER jan.matis@gmail.com

RUN apt-get update -q
RUN apt-get upgrade -y -q
RUN apt-get install -y wget

RUN apt-get clean

# download and unpack java
WORKDIR /opt
RUN wget -nv --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u55-b13/jdk-7u55-linux-x64.tar.gz -O - | tar -zxf-

# fix files ownerships
RUN chown -R root:root /opt/jdk1.7.0_55

# creating symlinks - these are used in start script so necesary for correct functioning
RUN ln -s /opt/jdk1.7.0_55/ /opt/java
