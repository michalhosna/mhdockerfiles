NAME = mhdockerfiles/imapbox
IMAPBOX_VERSION=120513e3333bceaa5083e9317bbed56c6f0ffac5
TAG = v1_$(IMAPBOX_VERSION)

all: build publish publish-latest

build: imapbox
	docker build -t $(NAME):$(TAG) imapbox

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build

imapbox: Makefile
	git clone git@github.com:polo2ro/imapbox.git imapbox || true
	cd imapbox && git fetch && git reset --hard $(IMAPBOX_VERSION)

