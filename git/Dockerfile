ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}

ARG GIT_VERSION

RUN apk add --no-cache \
	bash=~5.1.0 \
	git=~${GIT_VERSION} \
	openssh=~8.4

ENTRYPOINT ["/bin/bash"]
CMD ["-c", "exit 0"]
