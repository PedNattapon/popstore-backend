FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm config set registry https://registry.npmmirror.com

RUN npm install

COPY . .

RUN npx prisma generate

CMD ["npm", "run", "start:dev"]
