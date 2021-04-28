FROM node:lts-alpine3.13 as builder
WORKDIR data
COPY . .
RUN npm install && \
    npm run build
RUN rm -rf node_modules/
