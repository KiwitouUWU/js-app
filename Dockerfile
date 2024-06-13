FROM ubuntu

RUN apt-get -y update && apt-get -y install nginx

COPY views/* /usr/share/nginx/html/

EXPOSE 80

CMD [ "/etc/init.d/nginx", "start;"]