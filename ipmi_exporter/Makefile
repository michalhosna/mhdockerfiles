NAME = mhdockerfiles/ipmi_exporter
IPMI_EXPORTER_VERSION=1.5.1
TAG = v1_exporter$(IPMI_EXPORTER_VERSION)

all: build publish publish-latest

ipmi_exporter-$(IPMI_EXPORTER_VERSION).linux-amd64/ipmi_exporter:
	curl -L "https://github.com/prometheus-community/ipmi_exporter/releases/download/v$(IPMI_EXPORTER_VERSION)/ipmi_exporter-$(IPMI_EXPORTER_VERSION).linux-amd64.tar.gz" |  tar xz

build: Dockerfile Makefile ipmi_exporter-$(IPMI_EXPORTER_VERSION).linux-amd64/ipmi_exporter
	docker build --platform amd64 --build-arg "IPMI_EXPORTER_VERSION=$(IPMI_EXPORTER_VERSION)"  -t $(NAME):$(TAG) .

publish:
	docker push $(NAME):$(TAG)

publish-latest:
	docker tag $(NAME):$(TAG) $(NAME):latest
	docker push $(NAME):latest

.PHONY: publish publish-latest all build
