FROM node:13.8.0-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY ./TestNode/package*.json ./

USER node

RUN npm install

COPY --chown=node:node ./TestNode .

EXPOSE 3000

CMD [ "npm", "start" ] 


