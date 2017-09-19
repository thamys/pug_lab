FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY . .

# Install app dependencies
RUN npm install
RUN npm install -g nodemon

EXPOSE 3000
CMD [ "npm", "start" ]
