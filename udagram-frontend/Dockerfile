### Build
FROM node:14.15 as build
## Create app directory
WORKDIR /usr/src/app

RUN npm i -g @ionic/cli@6.19.0
## Install app dependencies
## A wildcard is used to ensure both package.json AND package-lock.json are copied COPY package*.json package-lock.json ./
COPY package*.json ./
RUN npm ci
## Bundle app source
COPY . .
RUN ionic build
### Run 
FROM nginx:alpine
#COPY www /usr/share/nginx/html
COPY --from=build  /usr/src/app/www /usr/share/nginx/html