NAME = mhdockerfiles/contember-cli

NODE_VERSION=14.2.0-alpine
CONTEMBER_CLI_VERSION=0.7.6

SHORT_TAG=contember$(CONTEMBER_CLI_VERSION)
LONG_TAG=$(SHORT_TAG)_node$(NODE_VERSION)_v1

all: build publish publish-latest

build:
	docker build --build-arg "NODE_VERSION=$(NODE_VERSION)" --build-arg "CONTEMBER_CLI_VERSION=$(CONTEMBER_CLI_VERSION)"  -t $(NAME):$(LONG_TAG) .

publish:
	docker push $(NAME):$(LONG_TAG)
	docker tag $(NAME):$(LONG_TAG) $(NAME):$(SHORT_TAG)
	docker push $(NAME):$(SHORT_TAG)

publish-latest:
	docker tag $(NAME):$(LONG_TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
