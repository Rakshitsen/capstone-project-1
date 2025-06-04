FROM ubuntu:latest
RUN apt update
RUN apt install nginx -y
RUN rm -rf /var/www/html/*
COPY . /var/www/html
CMD ["nginx","-g","daemon off;"]
