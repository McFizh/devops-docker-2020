FROM node:lts-alpine as build
RUN apk add --update g++ make python
WORKDIR /service
COPY *.js package* README* ./
COPY src src
COPY util util
RUN npm ci ; npm run build

FROM nginx
COPY --from=build /service/dist/ /usr/share/nginx/html

EXPOSE 80
