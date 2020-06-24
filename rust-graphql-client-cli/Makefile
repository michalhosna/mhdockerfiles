NAME = mhdockerfiles/rust-graphql-client-cli
RUST_VERSION=1.44.1
GRAPHQL_CLIENT_VERSION=0.9.0
TAG = v1_rust$(RUST_VERSION)_client$(GRAPHQL_CLIENT_VERSION)

all: build publish publish-latest

build:
	docker build --build-arg "RUST_VERSION=$(RUST_VERSION)" --build-arg "GRAPHQL_CLIENT_VERSION=$(GRAPHQL_CLIENT_VERSION)"  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
