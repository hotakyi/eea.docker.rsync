FROM alpine:3.12
MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

RUN apk add --no-cache --virtual .run-deps rsync openssh tzdata curl ca-certificates proxychains-ng && rm -rf /var/cache/apk/*
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["sh"]
