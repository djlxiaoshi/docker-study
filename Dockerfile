FROM node:latest as builder
WORKDIR data
COPY . .

RUN npm install && \
    npm run build
RUN rm -rf node_modules/

FROM nginx
COPY --from=builder /data/build/ /usr/share/nginx/html/
EXPOSE 80
