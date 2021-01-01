NAME = mhdockerfiles/imagemagick
IMAGEMAGICK_VERSION=7.0.10.25
ALPINE_VERSION=3.12
TAG = v1_alpine$(ALPINE_VERSION)_imagemagick$(IMAGEMAGICK_VERSION)

all: build publish publish-latest

build:
	docker build --build-arg "ALPINE_VERSION=$(ALPINE_VERSION)" --build-arg "IMAGEMAGICK_VERSION=$(IMAGEMAGICK_VERSION)"  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
