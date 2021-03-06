#reference https://github.com/sequenceiq/hadoop-docker
FROM centos:7
MAINTAINER Prographer J<prographer.j@gmail.com>

USER root

#install dev tools
RUN yum clean all; \
    rpm --rebuilddb; \
    yum install -y initscripts curl tar

RUN yum update -y

# java
RUN curl -LO 'http://download.oracle.com/otn-pub/java/jdk/8u111-b14/jdk-8u111-linux-x64.rpm' -H 'Cookie: oraclelicense=accept-securebackup-cookie'
RUN rpm -i jdk-8u111-linux-x64.rpm
RUN rm jdk-8u111-linux-x64.rpm

ENV JAVA_HOME /usr/java/default
ENV PATH $PATH:$JAVA_HOME/bin
RUN rm /usr/bin/java && ln -s $JAVA_HOME/bin/java /usr/bin/java
