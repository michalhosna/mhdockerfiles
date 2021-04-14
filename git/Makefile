NAME = mhdockerfiles/git
GIT_VERSION=2.30.0
ALPINE_VERSION=3.13
TAG = v1_alpine$(ALPINE_VERSION)_git$(GIT_VERSION)

all: build publish publish-latest

build:
	docker build --build-arg "ALPINE_VERSION=$(ALPINE_VERSION)" --build-arg "GIT_VERSION=$(GIT_VERSION)"  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
