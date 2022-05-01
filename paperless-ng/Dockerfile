ARG PAPERLESS_VERSION

FROM ghcr.io/paperless-ngx/paperless-ngx:${PAPERLESS_VERSION}

RUN apt-get update && \
	apt-get install --no-install-recommends --yes tesseract-ocr-ces && \
	apt-get clean
