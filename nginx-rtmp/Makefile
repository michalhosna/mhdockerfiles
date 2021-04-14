NAME = mhdockerfiles/nginx-rtmp
NGINX_VERSION=1.18.0
ALPINE_VERSION=3.13
FFMPEG_VERSION=4.4

TAG = v1_alpine$(ALPINE_VERSION)_nginx$(NGINX_VERSION)
TAG_FFMPEG = $(TAG)_ffmpeg$(FFMPEG_VERSION)

all: build publish publish-latest

build:
	docker build \
		--target base \
		--build-arg "ALPINE_VERSION=$(ALPINE_VERSION)" \
		--build-arg "NGINX_VERSION=$(NGINX_VERSION)"  \
		-t $(NAME):$(TAG) .

	docker build \
		--target ffmpeg \
		--build-arg "ALPINE_VERSION=$(ALPINE_VERSION)" \
		--build-arg "NGINX_VERSION=$(NGINX_VERSION)"  \
		--build-arg "FFMPEG_VERSION=$(FFMPEG_VERSION)"  \
		-t $(NAME):$(TAG_FFMPEG) .

publish:
	docker push $(NAME):$(TAG)
	docker push $(NAME):$(TAG_FFMPEG)

publish-latest:
	docker tag $(NAME):$(TAG_FFMPEG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
