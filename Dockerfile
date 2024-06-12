FROM ubuntu

RUN mkdir -p /home/node/app/node_modules

WORKDIR /home/node/app

COPY package*.json ./

RUN apt-get -y update && apt-get -y install nginx && apt-get -y install nodejs && apt-get -y install npm

RUN rm -f /etc/nginx/conf.d/default.conf

COPY default.conf /etc/nginx/conf.d

COPY run-docker.sh /home

RUN npm install

EXPOSE 80

CMD [ "bash", "/home/run-docker.sh;"]