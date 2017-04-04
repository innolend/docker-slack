FROM node:alpine

# RUN mkdir -p /usr/src/app

ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV

WORKDIR /usr/src/app

COPY package.json /usr/src/app/
COPY . /usr/src/app/
RUN npm install && npm cache clean

# WORKDIR /usr/src/app

CMD [ "npm", "start" ]