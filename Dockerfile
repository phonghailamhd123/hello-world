FROM tomcat:9.0.75-jdk11

# WORKDIR /var/jenkins_home/workspace/Sample-pipeline/webapp/target
COPY webapp.war /usr/local/tomcat/webapps

