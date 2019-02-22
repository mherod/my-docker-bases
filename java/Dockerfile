# FROM ubuntu:18.04
FROM mherod/base-ubuntu-java:latest
MAINTAINER Matthew Herod <matthew.herod@gmail.com>
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk ant wget curl coreutils tar software-properties-common libmysql-java
RUN apt-get clean
RUN apt-get upgrade -y
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /var/cache/oracle-jdk8-installer
RUN apt-get update
RUN apt-get install -y ca-certificates-java
RUN apt-get clean
RUN update-ca-certificates -f
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /var/cache/oracle-jdk8-installer
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME
