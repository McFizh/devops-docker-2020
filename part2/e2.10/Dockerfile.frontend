FROM node:lts
WORKDIR /service
COPY *.js package* README* ./
COPY src src
COPY util util
RUN npm ci
EXPOSE 5000
ENTRYPOINT [ "npm", "start" ]

