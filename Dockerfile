FROM nikolaik/python-nodejs:python3.12-nodejs20

WORKDIR /app

RUN npm install -g --unsafe-perm node-red@latest
RUN npm install -g --unsafe-perm node-red-contrib-aws@latest
RUN npm install -g --unsafe-perm node-red-contrib-chatbot@latest
RUN npm install -g --unsafe-perm node-red-contrib-function-npm@latest
RUN npm install -g --unsafe-perm @sentry/node@latest
ADD . /app

# config and flows files
VOLUME /app/.nodered/

CMD /app/start.sh
