FROM nikolaik/python-nodejs:python2.7-nodejs12

WORKDIR /app

RUN npm install -g --unsafe-perm node-red
RUN npm install -g --unsafe-perm node-red-contrib-chatbot
RUN npm install -g --unsafe-perm node-red-contrib-aws

ADD . /app

# config and flows files
VOLUME /app/.nodered/

CMD /app/start.sh
