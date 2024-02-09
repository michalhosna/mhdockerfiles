FROM alpine:3.19.1

RUN apk add --no-cache \
    nginx \
    git-daemon \
    fcgiwrap

ENTRYPOINT ["/usr/bin/fcgiwrap"]
