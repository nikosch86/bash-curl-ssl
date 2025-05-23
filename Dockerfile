FROM alpine:latest

ENV REFRESHED_AT 2025-05-23

RUN apk add --update curl openssl bash && \
  rm -rf /var/cache/apk/*

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["curl"]
