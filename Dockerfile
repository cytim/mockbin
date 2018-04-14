FROM node:8-alpine

WORKDIR /usr/src/app

COPY . .
RUN npm install && \
    chown --recursive node:node .

USER node

ENV MOCKBIN_REDIS=redis://redis:6379
EXPOSE 8080

CMD [ "npm", "start" ]

