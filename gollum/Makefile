NAME = mhdockerfiles/gollum
GOLLUM_VERSION=5.1.2
TAG = v1_gollum$(GOLLUM_VERSION)

all: build publish publish-latest

build: Dockerfile Makefile
	docker build --build-arg "GOLLUM_VERSION=$(GOLLUM_VERSION)"  -t $(NAME):$(TAG) .
	docker tag $(NAME):$(TAG) $(NAME):latest

publish: build
	docker push $(NAME):$(TAG)

publish-latest: build
	docker push $(NAME):latest

