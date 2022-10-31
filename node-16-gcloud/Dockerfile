FROM cimg/node:17.7-browsers
MAINTAINER Matthew Herod <matthew.herod@gmail.com>
RUN sudo apt-get update && sudo apt-get install apt-transport-https ca-certificates gnupg
RUN echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
RUN sudo apt-get update && sudo apt-get install google-cloud-cli
#RUN apt-get update
#RUN apt-get install -y openjdk-8-jdk ant wget curl coreutils tar software-properties-common libmysql-java
#RUN apt-get clean
#RUN apt-get upgrade -y
#RUN rm -rf /var/lib/apt/lists/*
#RUN rm -rf /var/cache/oracle-jdk8-installer
#RUN apt-get update
#RUN apt-get install -y ca-certificates-java
#RUN apt-get clean
#RUN update-ca-certificates -f
#RUN rm -rf /var/lib/apt/lists/*
#RUN rm -rf /var/cache/oracle-jdk8-installer
#ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
#RUN export JAVA_HOME
