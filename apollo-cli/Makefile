NAME = mhdockerfiles/apollo-cli
APOLLO_VERSION=2.28.3
NODE_VERSION=14.5.0
TAG = v1_node$(NODE_VERSION)_apollo$(APOLLO_VERSION)

all: build publish publish-latest

build:
	docker build --build-arg "NODE_VERSION=$(NODE_VERSION)" --build-arg "APOLLO_VERSION=$(APOLLO_VERSION)"  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
