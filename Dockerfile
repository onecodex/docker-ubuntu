FROM ubuntu:14.04
MAINTAINER Frank Macreery <frank@macreery.com>

RUN apt-get update

# Install Git
RUN apt-get install -y git

# Install make and gcc and standard build libraries
RUN apt-get install -y build-essential
RUN apt-get install -y gcc
RUN apt-get install -y libz-dev
RUN apt-get install -y python 

# Install latest security updates now, and on build
RUN grep security /etc/apt/sources.list > /tmp/security.list
RUN apt-get -y -o Dir::Etc::SourceList=/tmp/security.list upgrade
ONBUILD RUN apt-get -y -o Dir::Etc::SourceList=/tmp/security.list upgrade

# Install Bats
RUN git clone https://github.com/sstephenson/bats.git /tmp/bats && \
    cd /tmp/bats && ./install.sh /usr/local

# Integration tests
ADD test /tmp/test
RUN bats /tmp/test
