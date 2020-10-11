FROM alpine:latest
MAINTAINER Shira Kagurazaka <docker@ni-co.moe>

RUN apk update
RUN apk add nodejs nodejs-npm git
RUN git clone https://github.com/denghongcai/forsaken-mail.git /forsaken-mail

WORKDIR /forsaken-mail

RUN npm install

EXPOSE 25
EXPOSE 3000
CMD npm start