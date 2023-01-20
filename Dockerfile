FROM node:alpine3.17

RUN apk update && apk add git && apk add openssh

WORKDIR /app

COPY index.js /app/
COPY package.json /app/

RUN npm install

RUN chown -R 1000:1000 /app

USER 1000

EXPOSE 3000

CMD ["node","index.js"]