FROM ruby:3.2.2-bookworm

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]

RUN apt-get -y update && \
 	apt-get -y install libicu-dev cmake && \
 	 rm -rf /var/lib/apt/lists/*

RUN gem install github-linguist --version=7.28.0

ARG GOLLUM_VERSION
RUN gem install gollum --version="$GOLLUM_VERSION"
RUN gem install asciidoctor --version="2.0.20"

COPY patches /var/gollum-patches
WORKDIR "/usr/local/bundle/gems/gollum-$GOLLUM_VERSION"
RUN git apply /var/gollum-patches/*.patch

WORKDIR /wiki
ENTRYPOINT ["gollum"]
CMD ["--port", "8080"]
EXPOSE 8080
