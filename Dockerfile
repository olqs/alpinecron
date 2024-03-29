FROM alpine:3

RUN apk --no-cache update && \
    apk --no-cache upgrade && \
    apk --no-cache add openssh rsync mariadb-client

CMD ["/usr/sbin/crond","-f","-L","/dev/stdout"]
