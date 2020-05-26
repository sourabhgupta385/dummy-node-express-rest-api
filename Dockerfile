FROM node:8.11-alpine

WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

ENV PORT 3000
EXPOSE $PORT
CMD [ "node", "index.js" ]
