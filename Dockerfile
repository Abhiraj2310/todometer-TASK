FROM node:hydrogen-buster

WORKDIR /nodenew

COPY . .

RUN npm install && \
 npm run postinstall && \
 npm run pre-electron-pack && \
 npm run electron-pack



CMD ["node", "package.json"]

EXPOSE 3000

