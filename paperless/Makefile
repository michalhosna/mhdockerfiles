NAME = mhdockerfiles/paperless
PAPERLESS_VERSION=1a4281f6b0d1b25341cc7f47e9a2d66e17370428a9dbfac25ded32c6ed31d2b8
TAG = v1_$(PAPERLESS_VERSION)

all: build publish publish-latest

build:
	docker build --build-arg "PAPERLESS_VERSION=$(PAPERLESS_VERSION)"  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
