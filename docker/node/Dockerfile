FROM node:slim

MAINTAINER hisayatanaka

EXPOSE 3000

RUN apt-get update
RUN apt-get install -y vim

CMD bash -c " \
	cd /product/public && \
	npm install && \
	npm rebuild node-sass && \
	npm start \
"
