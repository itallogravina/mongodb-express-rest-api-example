FROM node:alpine

RUN mkdir -p /backend

WORKDIR /backend

COPY package*.json /backend/

RUN yarn install

COPY . /backend

EXPOSE 5050

CMD ["yarn", "dev"]