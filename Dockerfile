FROM node:latest
RUN mkdir -p ../dockerized
WORKDIR ../dockerized
COPY package*.json ../dockerized
RUN npm install express
COPY . ../dockerized
EXPOSE 9080
CMD [ "node", "app" ]
