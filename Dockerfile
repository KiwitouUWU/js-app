FROM ubuntu

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

RUN apt-get -y update && apt-get -y install nginx && apt-get -y install nodejs

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 80

CMD [ "npm", "run", "start;"]