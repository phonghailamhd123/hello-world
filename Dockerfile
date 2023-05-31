FROM tomcat:latest
RUN cp -R  /var/jenkins_home/workspace/Sample-pipeline/webapp/target/*  /usr/local/tomcat/webapps
COPY ./*.war /usr/local/tomcat/webapps
