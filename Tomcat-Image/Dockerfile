FROM ubuntu:latest
MAINTAINER Raghavendra <Raghavendra.Bn2@mindtree.com>

# update ubuntu and Install Java openjdk
RUN apt-get -y update && apt-get install -y curl wget openjdk-8-jre

# Set Environment variable for java
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64

# install tomcat
RUN wget -O /tmp/apache-tomcat-8.0.26.tar.gz \
   http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.26/bin/apache-tomcat-8.0.26.tar.gz
RUN tar zxvf /tmp/apache-tomcat-8.0.26.tar.gz -C /opt/
ENV CATALINA_HOME /opt/apache-tomcat-8.0.26

# expose ports
EXPOSE 8080

#editing tomcat user.xml
RUN sed -i '/^[ \t]*<tomcat-users>/,/^[ \t]*<\/tomcat-users>/c\<tomcat-users>\n<role rolename="role1"\/>\n<role rolename="manager-gui"\/>\n<role rolename="manager-script"\/>\n<user username="tomcat" password="tomcat" roles="manager-gui,manager-script"\/>\n<user username="both" password="both" roles="tomcat,role1"\/>\n<user username="role1" password="role1" roles="role1"\/>\n<\/tomcat-users>' /opt/apache-tomcat-8.0.26/conf/tomcat-users.xml

#Start Tomcat
CMD ["/opt/apache-tomcat-8.0.26/bin/catalina.sh", "run"]

