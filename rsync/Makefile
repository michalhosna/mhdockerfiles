NAME = mhdockerfiles/rsync
RSYNC_VERSION=3.1.3-r3
ALPINE_VERSION=3.12
TAG = v2_alpine$(ALPINE_VERSION)_rsync$(RSYNC_VERSION)

all: build publish publish-latest

build:
	docker build --build-arg "ALPINE_VERSION=$(ALPINE_VERSION)" --build-arg "RSYNC_VERSION=$(RSYNC_VERSION)"  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
