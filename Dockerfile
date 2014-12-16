# This is my centos dockerfile
FROM centos:latest
MAINTAINER Dusan Krajcovic <dusan.krajcovic@gmail.com>

RUN yum update -y

RUN yum install mc -y
RUN yum install vim -y
RUN yum install wget -y

# Install ser2net
RUN wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm -O epel-release-6-8.noarch.rpm 
RUN rpm -Uvh epel-release*rpm
RUN yum install ser2net -y

# Restart ser2net
ADD files/ser2net.conf /etc/
RUN service ser2net restart
