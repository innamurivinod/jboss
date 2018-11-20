FROM registry.access.redhat.com/rhel7/rhel
MAINTAINER innamurivinod@gmail.com
ADD jdk-8u191-linux-x64.tar.gz /opt/
WORKDIR /opt/
RUN ls -lart
ENV JAVA_HOME=/opt/jdk1.8.0_191
ENV PATH=$JAVA_HOME/bin:$PATH
CMD /bin/bash
