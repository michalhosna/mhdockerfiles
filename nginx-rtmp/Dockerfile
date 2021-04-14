ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION} as base

ARG NGINX_VERSION

RUN apk add --no-cache \
	nginx=~${NGINX_VERSION} \
	nginx-mod-rtmp=~${NGINX_VERSION} \
 && rm /etc/nginx/nginx.conf

COPY stat.xsl /var/stat/stat.xsl

COPY conf.d /etc/nginx/conf.d


CMD ["nginx", "-g", "daemon off;"]

#--------------------------------------------------

FROM base as ffmpeg

RUN apk add --no-cache \
	curl \
	bash

ARG FFMPEG_VERSION
WORKDIR /usr/local/bin

# Link is not version locked, bacause latest release is not avaible using locked url
# Older releases avaible at https://www.johnvansickle.com/ffmpeg/old-releases/ffmpeg-${FFMPEG_VERSION}-amd64-static.tar.xz
# See https://johnvansickle.com/ffmpeg/
RUN curl https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz -o /tmp/ffmpeg.tar.xz \
 && apk add --no-cache xz \
 && tar -x --xz --strip-components=1 -f /tmp/ffmpeg.tar.xz \
		ffmpeg-${FFMPEG_VERSION}-amd64-static/ffmpeg \
		ffmpeg-${FFMPEG_VERSION}-amd64-static/ffprobe \
 && apk del xz \
 && chown root:root ffmpeg ffprobe \
 && chmod +x ffmpeg ffprobe

WORKDIR /root



