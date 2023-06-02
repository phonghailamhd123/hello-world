FROM tomcat:8.5-jdk8

# WORKDIR /var/jenkins_home/workspace/Sample-pipeline/webapp/target
COPY webapp.war /usr/local/tomcat/webapps

