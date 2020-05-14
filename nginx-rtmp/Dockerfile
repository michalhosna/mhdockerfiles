ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}

ARG NGINX_VERSION

RUN apk add --no-cache nginx=${NGINX_VERSION} nginx-mod-rtmp=${NGINX_VERSION}  \
 && rm /etc/nginx/nginx.conf

COPY stat.xsl /var/stat/stat.xsl

COPY conf.d /etc/nginx/conf.d


CMD ["nginx", "-g", "daemon off;"]
