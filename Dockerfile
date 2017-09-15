FROM node:boron

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

RUN npm install -g nodemon

COPY . /usr/src/app

EXPOSE 3000

CMD [ "npm", "start" ]
