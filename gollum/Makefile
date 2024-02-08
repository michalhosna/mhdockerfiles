NAME = mhdockerfiles/gollum
GOLLUM_VERSION=5.3.2
TAG = v2_gollum$(GOLLUM_VERSION)

all: build publish publish-latest

build: Dockerfile Makefile
	podman build --platform linux/amd64 --build-arg "GOLLUM_VERSION=$(GOLLUM_VERSION)" --format docker -t $(NAME):$(TAG) .
	podman tag $(NAME):$(TAG) $(NAME):latest

publish: build
	podman push $(NAME):$(TAG)

publish-latest: build
	podman push $(NAME):latest
