FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=p4ssw0rd

WORKDIR /usr/src/app

COPY ./app ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "server.js"]

