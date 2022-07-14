FROM node:16.16.0
WORKDIR /app

ENV NODE_ENV production

COPY package*.json ./

RUN npm i

COPY . .

RUN npm i -g pm2

EXPOSE 3000

CMD ["pm2-runtime", "index.js"]