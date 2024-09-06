ARG VERSION=latest

FROM grafana/grafana-oss:${VERSION}

COPY datasources.yaml /etc/grafana/provisioning/datasources/datasources.yaml

ENV \
    GF_INSTALL_PLUGINS=grafana-piechart-panel,grafana-worldmap-panel,grafana-clock-panel,grafana-simple-json-datasource
