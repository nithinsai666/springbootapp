FROM centos:latest as springboot

USER root
WORKDIR /usr/local
###Install GIT and wget########
RUN yum install -y wget
RUN yum install -y git


####Install Pre-requisites java and nodejs#######
###Install Java jdk####
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.tar.gz
RUN tar -xzf jdk-8u181-linux-x64.tar.gz
RUN chown root:root /usr/local/* -R
ENV JAVA_HOME=/usr/local/jdk1.8.0_181
ENV PATH=${JAVA_HOME}/bin:${PATH}
RUN rm -f jdk-8u181-linux-x64.tar.gz

##Install node####
RUN wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN chown root:root /usr/local/* -R
RUN yum install -y epel-release-latest-7.noarch.rpm
RUN yum install -y nodejs
RUN rm -f epel-release-latest-7.noarch.rpm

####Install mvn######
RUN cd /usr/local
RUN wget http://www-eu.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz
RUN tar xzf apache-maven-3.5.4-bin.tar.gz
RUN chown root:root /usr/local/* -R
RUN ln -s apache-maven-3.5.4 maven
RUN rm -f /usr/local/apache-maven-3.5.3-bin.tar.gz
ENV M2_HOME=/usr/local/maven
ENV PATH=${M2_HOME}/bin:${PATH}
RUN rm -f apache-maven-3.5.4-bin.tar.gz
