# Base image

FROM node:16

# Create app directory

WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied

COPY package\*.json ./

# Install app dependencies

RUN yarn install

# Bundle app source

COPY . .

# Creates a "dist" folder with the production build

RUN yarn build

# Start the server using the production build

CMD [ "npm", "run", "start:prod" ]
