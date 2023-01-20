FROM node:alpine3.17

RUN apk update && apk add git

WORKDIR /app

COPY index.js /app/
COPY package.json /app/

RUN npm install

USER 1000

EXPOSE 3000

CMD ["node","index.js"]