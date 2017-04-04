FROM node:alpine

RUN mkdir -p /usr/src/app

ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV
ONBUILD COPY ./package.json /usr/src/app/package.json
ONBUILD RUN npm install && npm cache clean
ONBUILD COPY . /usr/src/app
ONBUILD WORKDIR /usr/src/app

CMD [ "npm", "start" ]