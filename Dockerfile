FROM node:12.7.0-alpine

WORKDIR '/app'

COPY . ${APP_ROOT}

RUN npm install
RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]
