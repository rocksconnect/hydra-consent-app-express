FROM node:6.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN npm install --silent; exit 0
RUN npm run build

ENTRYPOINT npm start

EXPOSE 3000
