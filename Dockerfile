FROM node:20-alpine
WORKDIR /opt/app
COPY index.js index.html package.json ./
EXPOSE 3000
RUN apk update && apk add --no-cache bash openssl curl &&\
    npm install
CMD ["node", "index.js"]
