FROM node:14.21-alpine as builder

FROM builder as dev
RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# RUN npm run build
EXPOSE 3001
CMD [ "npm", "run", "start" ]
