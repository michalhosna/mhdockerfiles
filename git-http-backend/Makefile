NAME = registry.hub.docker.com/mhdockerfiles/git-http-backend
TAG = v1

all: build publish publish-latest

build: Dockerfile Makefile
	podman build --platform linux/amd64  -t $(NAME):$(TAG) .

publish: build
	podman push $(NAME):$(TAG)

publish-latest:
	podman tag $(NAME):$(TAG) $(NAME):latest
	podman push $(NAME):latest

.PHONY: publish publish-latest all build
