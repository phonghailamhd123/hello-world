FROM scratch
ADD ubuntu-bionic-core-cloudimg-amd64-root.tar.gz /
CMD [/bin/bash]
RUN apt-get update  \
   &&  apt-get install -y --no-install-recommends wget curl unzip vim tzdata openssl sudo openssh-server fontconfig libfreetype6 \
   &&  rm -rf /var/lib/apt/lists/*;

RUN mkdir /opt/tomcat; mkdir /opt/java
ENV LANG=C.UTF-8
ENV JAVA_HOME=/opt/java/jdk-11.0.8
ADD jdk-11.0.8_linux-x64_bin.tar.gz /opt/java
RUN export JAVA_HOME	
ADD apache-tomcat-9.0.68.tar.gz /opt/tomcat
WORKDIR /opt/tomcat
RUN mv apache-tomcat-9.0.68/* /opt/tomcat/.
WORKDIR /opt/tomcat/webapps
COPY webapp.war /opt/tomcat/webapps/
EXPOSE 8080/tcp 8000/tcp 22/tcp 5000/tcp
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
