FROM node:12-alpine
EXPOSE 3000 9229

WORKDIR /home/app

COPY package.json /home/app/
COPY package-lock.json /home/app/

RUN npm install

COPY scripts/ /home/app

RUN npm run build

CMD npm run start