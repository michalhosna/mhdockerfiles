ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}

ARG FFMPEG_VERSION

RUN apk add --no-cache \
	bash=5.0.11-r1 \
	ffmpeg=${FFMPEG_VERSION} \
	ffmpeg-libs=${FFMPEG_VERSION}

ENTRYPOINT ["/bin/bash"]
CMD ["-c", "exit 0"]
