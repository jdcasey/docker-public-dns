FROM centos:latest
MAINTAINER John Casey <jdcasey@commonjava.org>

RUN yum -y update
RUN yum -y install bind bind-utils

ADD named.conf /etc/named.conf
ADD conf /var/named

EXPOSE 1053

CMD ["/usr/sbin/named", "-g"]