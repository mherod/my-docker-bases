FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y ant
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
