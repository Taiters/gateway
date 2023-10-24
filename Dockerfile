FROM nginx:1.25-alpine

RUN apk add openssl
RUN openssl dhparam -out /etc/nginx/dhparam.pem 2048

COPY ./config/ /etc/nginx/