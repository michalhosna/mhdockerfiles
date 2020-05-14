NAME = mhdockerfiles/nginx-rtmp
NGINX_VERSION=1.16.1-r6
ALPINE_VERSION=3.11
TAG = v1_alpine$(ALPINE_VERSION)_nginx$(NGINX_VERSION)

all: build publish publish-latest

build:
	docker build --build-arg "ALPINE_VERSION=$(ALPINE_VERSION)" --build-arg "NGINX_VERSION=$(NGINX_VERSION)"  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
