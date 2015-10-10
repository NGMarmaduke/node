# DOCKER-VERSION 0.10.0
FROM node:0.12

ENV HOME /home/web/
WORKDIR /home/web/site

RUN useradd web -d /home/web -s /bin/bash -m
RUN chown -R web:web /home/web
USER web

RUN git clone https://github.com/NGMarmaduke/node /home/web/site

RUN npm install

ENV NODE_ENV development

EXPOSE 8080 

CMD npm start