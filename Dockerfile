FROM ubuntu:14.04
MAINTAINER Holger May "docker@iomq.org"

#ENV
ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update -qq && apt-get -y dselect-upgrade
RUN apt-get install -y ruby ruby-dev sqlite3 libsqlite3-dev binutils build-essential bzip2 cpp dpkg-dev fakeroot g++ make
RUN apt-get update -qq && apt-get -y dselect-upgrade
RUN echo "0.1.20160302.0" > /etc/iomq_version
RUN gem install mailcatcher --no-ri --no-rdoc
RUN apt-get update -qq && apt-get -y dselect-upgrade

EXPOSE 1080
EXPOSE 25
CMD mailcatcher --smtp-port 25 --ip `ip addr show dev eth0 scope global | grep inet | awk '{print $2;}' | cut -d/ -f1` -f
