FROM ubuntu:14.04
MAINTAINER Chris Armstrong <chris@chrisarmstrong.me>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -yq software-properties-common
RUN add-apt-repository ppa:semiosis/ubuntu-glusterfs-3.5
RUN apt-get update && apt-get install -yq glusterfs-server
CMD /usr/sbin/glusterd
