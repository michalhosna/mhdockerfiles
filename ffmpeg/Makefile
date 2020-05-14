NAME = mhdockerfiles/ffmpeg
FFMPEG_VERSION=4.2.1-r3
ALPINE_VERSION=3.11
TAG = v1_alpine$(ALPINE_VERSION)_ffmpeg$(FFMPEG_VERSION)

all: build publish publish-latest

build:
	docker build --build-arg "ALPINE_VERSION=$(ALPINE_VERSION)" --build-arg "FFMPEG_VERSION=$(FFMPEG_VERSION)"  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
