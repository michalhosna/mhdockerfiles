ARG NEXTCLOUD_IMAGE_VERSION
FROM nextcloud:${NEXTCLOUD_IMAGE_VERSION}

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]

RUN apt-get update; \
	apt-get install -y --no-install-recommends \
	 	smbclient \
	 	libsmbclient-dev; \
	pecl install smbclient; \
	docker-php-ext-enable smbclient; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*
