# FROM ubuntu
# RUN apt-get update

# RUN apt-get -y install apache2


# EXPOSE 80
# CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

FROM node:gallium-bullseye
WORKDIR /usr/src/app
COPY . .
RUN npm install
CMD ["npm", "start"]
