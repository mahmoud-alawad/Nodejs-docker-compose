FROM node:14

WORKDIR /

COPY package.json .

RUN npm install

RUN npx prisma \
npx prisma init \

COPY . .

VOLUME [ "/app/node_modules" ]

CMD ["npm", "run", "start"]
