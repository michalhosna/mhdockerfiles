NAME = mhdockerfiles/paperless-ng
PAPERLESS_VERSION=1.9.2
TAG = v1_$(PAPERLESS_VERSION)

all: build publish publish-latest

build: Dockerfile Makefile
	docker build --platform amd64 --build-arg "PAPERLESS_VERSION=$(PAPERLESS_VERSION)"  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
