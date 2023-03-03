FROM cimg/node:18.14-browsers
MAINTAINER Matthew Herod <matthew.herod@gmail.com>
RUN sudo apt-get update && sudo apt-get install apt-transport-https ca-certificates gnupg
RUN echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
RUN sudo apt-get update && sudo apt-get install google-cloud-cli wget curl coreutils tar
RUN apt-get upgrade -y
RUN curl -sL https://firebase.tools | bash
