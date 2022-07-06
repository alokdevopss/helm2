FROM ubuntu
RUN apt-get update

RUN apt-get -y install apache2


EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
