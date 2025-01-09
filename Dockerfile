# FROM node:4.2
# COPY . /src
# RUN cd /src && npm install
# EXPOSE 4000
# CMD ["node", "/src/src/server.js"]

FROM keymetrics/pm2:latest-alpine

# Bundle APP files
COPY src src/
COPY package.json .
COPY pm2.json .

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production

# Show current folder structure in logs
RUN ls -al -R

CMD [ "pm2-runtime", "start", "pm2.json" ]
