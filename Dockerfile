FROM nikolaik/python-nodejs:python3.8-nodejs12

WORKDIR /app

RUN npm install -g --unsafe-perm node-red
RUN npm install -g --unsafe-perm node-red-contrib-aws
RUN npm install -g --unsafe-perm node-red-contrib-chatbot
RUN npm install -g --unsafe-perm node-red-contrib-function-npm
RUN npm install -g --unsafe-perm @sentry/node@5.22.3
ADD . /app

# config and flows files
VOLUME /app/.nodered/

CMD /app/start.sh
