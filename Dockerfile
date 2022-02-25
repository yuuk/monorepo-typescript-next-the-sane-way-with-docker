# => Build container
FROM node:12.22.0-alpine as builder
WORKDIR /
COPY package.json .
COPY yarn.lock .
RUN yarn install
COPY . .
EXPOSE 80
RUN yarn build:app


# docker build -t next-monorepo:1.0.0 .
