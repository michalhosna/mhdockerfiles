NAME = mhdockerfiles/openssh
OPENSSH_VERSION=8.3_p1-r0
ALPINE_VERSION=3.12
TAG = v1_alpine$(ALPINE_VERSION)_openssh$(OPENSSH_VERSION)

all: build publish publish-latest

build:
	docker build --build-arg "ALPINE_VERSION=$(ALPINE_VERSION)" --build-arg "OPENSSH_VERSION=$(OPENSSH_VERSION)"  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
