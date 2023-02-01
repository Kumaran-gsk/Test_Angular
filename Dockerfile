FROM node:18.12.1-alpine as node
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm run build --prod
EXPOSE 3030
