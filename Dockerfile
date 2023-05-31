FROM tomcat:latest

COPY /var/jenkins_home/workspace/Sample-pipeline/webapp/target/webapp.war /usr/local/tomcat/webapps
