FROM alpine:3.18

WORKDIR /var/www

RUN apk add --no-cache thttpd \
    && chown thttpd /var/www \
    && chmod a+r /var/www

USER thttpd
ENTRYPOINT ["/usr/sbin/thttpd"]
