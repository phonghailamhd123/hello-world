FROM tomcat:latest

WORKDIR /var/jenkins_home/workspace/Sample-pipeline/webapp/target
COPY webapp.war /usr/local/tomcat/webapps

