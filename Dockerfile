FROM node:14-alpine

RUN apk add --no-cache python make g++

RUN npm install --unsafe-perm -g jscpd@3.3.16
