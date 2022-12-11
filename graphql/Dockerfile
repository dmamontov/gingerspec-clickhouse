FROM node:19.2.0

WORKDIR /usr/src/app

COPY db.js /usr/src/app/

RUN npm install -g json-graphql-server

EXPOSE 3000

CMD [ "json-graphql-server", "db.js", "--h", "0.0.0.0", "--p", "3000" ]
