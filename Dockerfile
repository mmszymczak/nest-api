FROM node:dubnium

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY . /usr/src/app

RUN yarn install

EXPOSE 5000

CMD [ "sh", "-c", "yarn ${MODE}:${ENV}"]
