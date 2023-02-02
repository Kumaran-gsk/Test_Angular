FROM node:18.12.1-alpine as node
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install -g npm@9.4.1
COPY . .
RUN npm install -g @angular/cli@latest 
EXPOSE 3030

# stage 2
FROM nginx:1.17.1-alpine
RUN rm -rf /usr/share/nginx/html/*
