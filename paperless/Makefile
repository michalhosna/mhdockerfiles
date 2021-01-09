NAME = mhdockerfiles/paperless
PAPERLESS_VERSION=f6f840dd8c347a3a35c319db31b6a11782db9c40ba4b58b296dff27aabc68bdc
TAG = v1_$(PAPERLESS_VERSION)

all: build publish publish-latest

build: Dockerfile Makefile
	docker build --build-arg "PAPERLESS_VERSION=$(PAPERLESS_VERSION)"  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
