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


# FROM ubuntu
# # MAINTAINER demousr@gmail.com

# RUN apt-get update
# # RUN apt-get install –y nginx
# # RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
# RUN apt-get install -y nodejs
# CMD [“echo”,”Image created”]

# # FROM alpine
# # CMD ["echo", "Hello StackOverflow!"]



# # Download base image ubuntu 20.04
# FROM ubuntu:20.04

# # LABEL about the custom image
# # LABEL maintainer="admin@sysadminjournal.com"
# LABEL version="0.1"
# LABEL description="This is custom Docker Image for \
# the PHP-FPM and Nginx Services."

# # Disable Prompt During Packages Installation
# ARG DEBIAN_FRONTEND=noninteractive

# # Update Ubuntu Software repository
# RUN apt update

# # Install nginx, php-fpm and supervisord from ubuntu repository
# RUN apt install -y nginx php-fpm supervisor && \
#     rm -rf /var/lib/apt/lists/* && \
#     apt clean
    
# # Define the ENV variable
# ENV nginx_vhost /etc/nginx/sites-available/default
# ENV php_conf /etc/php/7.4/fpm/php.ini
# ENV nginx_conf /etc/nginx/nginx.conf
# ENV supervisor_conf /etc/supervisor/supervisord.conf

# # Enable PHP-fpm on nginx virtualhost configuration
# COPY default ${nginx_vhost}
# RUN sed -i -e 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' ${php_conf} && \
#     echo "\ndaemon off;" >> ${nginx_conf}
    
# # Copy supervisor configuration
# COPY supervisord.conf ${supervisor_conf}

# RUN mkdir -p /run/php && \
#     chown -R www-data:www-data /var/www/html && \
#     chown -R www-data:www-data /run/php
    
# # Volume configuration
# VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# # Copy start.sh script and define default command for the container
# COPY start.sh /start.sh
# CMD ["./start.sh"]

# # Expose Port for the Application 
# EXPOSE 80 443





# Get the base image

FROM ubuntu:16.04

# Install all packages

RUN \

apt-get update && \

apt-get -y upgrade && \

# apt-get install -y apache2 && \

# adding some content for Apache server

# RUN echo "This is a test docker" > /var/www/html/index.html

# Copying setting file & adding some content to be served by apache

# COPY data/httpd.conf /etc/apache2/httpd.conf

# Defining a command to be run after the docker is up

ENTRYPOINT ["elinks"]

CMD ["localhost"]
