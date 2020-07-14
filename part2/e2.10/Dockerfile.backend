FROM node:lts
WORKDIR /service
COPY *.js package* README* ./
COPY server server
RUN npm ci
EXPOSE 8000
ENTRYPOINT [ "npm", "start" ]

