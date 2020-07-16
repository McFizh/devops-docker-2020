FROM alpine:3.12
RUN apk add docker git

WORKDIR /service
COPY builder.sh ./
RUN chmod u+x builder.sh

ENTRYPOINT [ "./builder.sh" ]
