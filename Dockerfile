# Format: FROM    repository[:version]
FROM ubuntu:14.04

# Format: MAINTAINER Name <email@addr.ess>
MAINTAINER Thomas Ferney <thomas.ferney@gmail.com>

RUN apt-get update

#Utilities
RUN apt-get install -y vim less net-tools inetutils-ping curl git telnet nmap socat dnsutils netcat tree htop unzip sudo software-properties-common

#MongoDB
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
    echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list && \
    apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mongodb-org
RUN mkdir -p /data/db

#Node
RUN curl http://nodejs.org/dist/v0.10.29/node-v0.10.29-linux-x64.tar.gz | tar xz
RUN mv node* node && \
    ln -s /node/bin/node /usr/local/bin/node && \
    ln -s /node/bin/npm /usr/local/bin/npm

RUN npm install -g grunt-cli
RUN echo 'eval "$(grunt --completion=bash)"' >> ~/.bashrc
RUN npm install -g bower
RUN npm install -g nodemon

# Add run scripts
ADD run.sh /run.sh
RUN chmod 755 ./*.sh

# Define working directory.
WORKDIR /data
  
EXPOSE 27017

# Define default command.
CMD ["bash"]