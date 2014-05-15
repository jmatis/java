FROM jmatis/ubuntu

MAINTAINER jan.matis@gmail.com

# download and unpack java
WORKDIR /opt
RUN wget -nv --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u55-b13/jdk-7u55-linux-x64.tar.gz -O - | tar -zxf-

# fix files ownerships
RUN chown -R root:root /opt/jdk1.7.0_55

# create symlink
RUN ln -s /opt/jdk1.7.0_55/ /opt/java
