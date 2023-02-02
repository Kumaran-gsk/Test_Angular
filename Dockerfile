FROM node:18.12.1-alpine as node
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install -g npm@9.4.1
COPY . .
RUN npm install -g @angular/cli@latest 
RUN ng build
EXPOSE 3030
