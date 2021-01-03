NAME = mhdockerfiles/nextcloud
NEXTCLOUD_IMAGE_VERSION=20.0.4-fpm
TAG = v1_nextcloud$(NEXTCLOUD_IMAGE_VERSION)

all: build publish publish-latest

build:
	docker build --build-arg "NEXTCLOUD_IMAGE_VERSION=$(NEXTCLOUD_IMAGE_VERSION)" -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
