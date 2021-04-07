NAME = mhdockerfiles/ffmpeg-with-chromium
TAG = v1

all: build publish publish-latest

build:
	docker build  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
