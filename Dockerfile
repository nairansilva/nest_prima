# Dockerfile for running Prisma on Linux Alpine 3.17+

# change with the Node.js version of your choice
ARG NODE_VERSION="18.12.1"

# change with the Linux Alpine version of your choice
ARG ALPINE_VERSION="3.17"

FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION} AS base

# install OpenSSL 1.1.x, needed for Linux Alpine 3.17+
RUN apk update \
  && apk add openssl1.1-compat
RUN apk add --no-cache bash

RUN npm install -g @nestjs/cli

USER node

WORKDIR /home/node/app
