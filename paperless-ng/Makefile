NAME = registry.hub.docker.com/mhdockerfiles/paperless-ng
PAPERLESS_VERSION=2.0.1
TAG = v1_$(PAPERLESS_VERSION)

all: build publish publish-latest

build: Dockerfile Makefile
	podman build --platform linux/amd64 --build-arg "PAPERLESS_VERSION=$(PAPERLESS_VERSION)"  -t $(NAME):$(TAG) .

publish:
	podman push $(NAME):$(TAG)

publish-latest:
	podman tag $(NAME):$(TAG) $(NAME):latest
	podman push $(NAME):latest

.PHONY: publish publish-latest all build
