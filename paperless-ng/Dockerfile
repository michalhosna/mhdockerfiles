ARG PAPERLESS_VERSION

FROM jonaswinkler/paperless-ng:${PAPERLESS_VERSION}

RUN apt-get update && \
	apt-get install --no-install-recommends --yes tesseract-ocr-ces && \
	apt-get clean
