FROM debian:bullseye-slim
RUN apt-get update \
 && apt-get install -y freeipmi \
 && rm -rf /var/lib/apt/lists/*

ARG IPMI_EXPORTER_VERSION
COPY "ipmi_exporter-${IPMI_EXPORTER_VERSION}.linux-amd64/ipmi_exporter" /bin/ipmi_exporter

EXPOSE      9290
USER        nobody
ENTRYPOINT  [ "/bin/ipmi_exporter" ]
