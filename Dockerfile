FROM node:18.12.1-alpine as node
WORKDIR /usr
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3030
