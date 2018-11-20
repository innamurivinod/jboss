FROM vikaschenny/rheljava:1.8
MAINTAINER innamurivinod@gmail.com
COPY jboss-eap-7.1.0-installer.jar /opt/jboss-eap-7.1.0-installer.jar
COPY auto.xml /opt/
COPY auto.xml.variables /opt/
WORKDIR /opt/
RUN java -jar jboss-eap-7.1.0-installer.jar auto.xml
ENV JBOSS_HOME=/opt/EAP-7.1.0
EXPOSE 9990
WORKDIR /opt/EAP-7.1.0/bin
CMD ./standalone.sh -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0
