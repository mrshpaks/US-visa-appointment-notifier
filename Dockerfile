FROM node:lts-alpine3.17

RUN apk add chromium

RUN adduser -D -h /opt/app puppeteer
WORKDIR /opt/app

COPY . .

RUN npm i
RUN chown -R puppeteer: /opt/app

USER puppeteer
CMD ["npm", "start"]
