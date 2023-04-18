~
~
FROM node:latest

WORKDIR /nodenew

COPY . .

RUN yum update -y && \
    yum install -y jq

COPY package*.jason ./

RUN npm install 
RUN npm run postinstall 
RUN npm run pre-electron-pack 
RUN npm run electron-pack

EXPOSE 3000

CMD ["node","start","runserver","0.0.0.0:3000"]
