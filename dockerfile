FROM node:8.11.1

# Create app directory
RUN mkdir -p /usr/src/crm
WORKDIR /usr/src/crm

# Install app dependencies
COPY package.json /usr/src/crm
RUN yarn

# Bundle app source
COPY . /usr/src/crm

# Build arguments
ARG NODE_VERSION=8.11.1

# Environment
ENV NODE_VERSION $NODE_VERSION