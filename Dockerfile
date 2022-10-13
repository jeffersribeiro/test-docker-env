FROM node:16

WORKDIR /usr/src/app

COPY package.json .
COPY yarn.lock .
COPY packages/server ./packages/server

RUN yarn set version berry
RUN yarn

WORKDIR /usr/src/app/packages/server

EXPOSE 3333

CMD ["yarn", "start"]