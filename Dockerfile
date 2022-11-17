FROM node:14-slim

WORKDIR /home/node/app
COPY package*.json ./

RUN npm i
COPY . .

RUN npm run build

CMD ["npm", "start"]