#
# Base Dockerfile in CentOS 7 image
#

# Pull base image
FROM centos:centos7

# Maintener
MAINTAINER Gopal Kollengode <gopal.kollengode.t3c.io>

# Install tiller
RUN  yum update -y && \
     yum install -y epel-release python && \
     yum install -y python-pip && \
     pip install --upgrade pip &&  \
     pip install j2cli && \
     yum clean all 

