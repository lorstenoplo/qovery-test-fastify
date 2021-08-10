FROM node:14 

WORKDIR /usr/src/app

COPY package.json ./

RUN yarn

COPY . .

ENV NODE_ENV production

EXPOSE 3000
CMD [ "node", "server.js" ]
USER node