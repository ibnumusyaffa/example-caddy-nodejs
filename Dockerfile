FROM node:14-alpine

WORKDIR /app

ENV NODE_ENV production

COPY package*.json /app/

RUN npm install

COPY . /app

USER node

CMD [ "node", "index.js" ]