# FROM centos

# MAINTAINER aksarav@middlewareinventory.com

# RUN mkdir /opt/tomcat/

# WORKDIR /opt/tomcat
# RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
# RUN tar xvfz apache*.tar.gz
# RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
# RUN yum -y install java
# RUN java -version

# WORKDIR /opt/tomcat/webapps
# RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war

# EXPOSE 8080

# CMD ["/opt/tomcat/bin/catalina.sh", "run"]


FROM ubuntu
# MAINTAINER demousr@gmail.com

# RUN apt-get update
# RUN apt-get install –y nginx
RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN apt-get install -y nodejs
CMD [“echo”,”Image created”]
