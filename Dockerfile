FROM alpine:latest

MAINTAINER Sierra1011 <github@sierrana.co.uk>

WORKDIR /app

RUN apk update && \
    apk upgrade 

COPY ./docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["fio"]
