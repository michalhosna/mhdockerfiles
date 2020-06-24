ARG RUST_VERSION
FROM rust:${RUST_VERSION}

SHELL ["/bin/sh", "-eux", "-c"]

ARG GRAPHQL_CLIENT_VERSION

RUN cargo install graphql_client_cli \
	--version="${GRAPHQL_CLIENT_VERSION}" \
	--locked

ENTRYPOINT ["graphql-client"]
