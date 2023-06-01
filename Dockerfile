FROM tomcat:latest

# WORKDIR /var/jenkins_home/workspace/Sample-pipeline/webapp/target
COPY /var/jenkins_home/workspace/Sample-pipeline/webapp/target/webapp.war /usr/local/tomcat/webapps

